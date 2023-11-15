import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:supertomic/data/model/comic_model.dart';
import 'package:supertomic/data/model/hero_model.dart';
import 'package:supertomic/screen/detail_screen.dart';
import 'package:supertomic/screen/widgets/comic_card.dart';
import 'package:supertomic/screen/widgets/heroes_card.dart';
import 'package:supertomic/theme/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      final List<Widget> imageSliders = [
        Stack(
          children: [
            SizedBox(
              height: 356,
              child: Image.asset(
                'assets/images/heroes/gotham.png',
                fit: BoxFit.cover,
              ),
            ),
            Image.asset('assets/images/heroes/batman_cover.png'),
            Positioned(
                left: 16,
                bottom: 30,
                child: Text('THE DARK KNIGHT',
                    style: getGeneraBoldStyle32(color: Colors.white))),
          ],
        ),
        Stack(
          children: [
            SizedBox(
              height: 356,
              child: Image.asset(
                'assets/images/heroes/superman_background.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 3,
                right: 2,
                child: Image.asset('assets/images/heroes/superman_cover.png',
                    width: 500)),
            Positioned(
                left: 16,
                bottom: 30,
                child: Text('MAN OF STEEL',
                    style: getGeneraBoldStyle32(color: Colors.white))),
          ],
        ),
        Stack(
          children: [
            SizedBox(
              height: 356,
              child: Image.asset(
                'assets/images/heroes/thor_background.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                left: 10,
                child: Image.asset(
                  'assets/images/heroes/thor_cover.png',
                  width: 400,
                )),
                Positioned(
              left: 16,
              bottom: 30,
              child: Text('GOD OF THUNDER',
                  style: getGeneraBoldStyle32(color: Colors.white))),
          ],
        )
      ];
      return CarouselSlider(
          options: CarouselOptions(
            scrollPhysics: const BouncingScrollPhysics(),
            aspectRatio: 2.0,
            autoPlay: true,
            viewportFraction: 1.0,
            height: 356,
          ),
          items: imageSliders
              .map((item) => Builder(
                    builder: (context) => Container(
                      width: MediaQuery.of(context).size.width,
                      child: item,
                    ),
                  ))
              .toList());
    }

    Widget heroesSection() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('YOUR FAVOURITE HEROES',
                  style: getGeneraBoldStyle20(color: Colors.black)),
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 0),
                itemCount: heroList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final HeroModel heroData = heroList[index];
                  final bool isLastItem = index == heroList.length - 1;
                  return SizedBox(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: index == 0 ? 16 : 0,
                        right: isLastItem ? 16 : 20,
                      ),
                      child: InkWell(
                        onTap: () => {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('You choose ${heroData.name}'),
                              duration: const Duration(seconds: 2)))
                        },
                        child: HeroesCard(heroData),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      );
    }

    Widget comicSection() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('TOP RATED COMICS',
                  style: getGeneraBoldStyle20(color: Colors.black)),
            ),
            const SizedBox(height: 20),
            SizedBox(
                height: 430,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 0),
                  itemCount: comicModelList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final ComicModel comicData = comicModelList[index];
                    final bool isLastItem = index == comicModelList.length - 1;
                    return SizedBox(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? 16 : 0,
                          right: isLastItem ? 16 : 20,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen(comicData);
                            }));
                          },
                          child: ComicCard(comicData),
                        ),
                      ),
                    );
                  },
                ))
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            heroesSection(),
            comicSection(),
          ],
        ),
      ),
    );
  }
}
