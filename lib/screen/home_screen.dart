import 'package:flutter/material.dart';
import 'package:supertomic/data/model/comic_model.dart';
import 'package:supertomic/screen/widgets/comic_card.dart';
import 'package:supertomic/theme/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  height: 356,
                ),
                Image.asset('assets/images/heroes/batman_cover.png'),
              ],
            ),
            const SizedBox(height: 20),
            Column(
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
                        final bool isLastItem =
                            index == comicModelList.length - 1;
                        return SizedBox(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 16 : 0,
                              right: isLastItem ? 16 : 20,
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: ComicCard(comicData),
                            ),
                          ),
                        );
                      },
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
