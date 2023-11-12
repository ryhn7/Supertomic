import 'package:flutter/material.dart';
import 'package:supertomic/data/model/comic_model.dart';
import 'package:supertomic/screen/components/comic_card.dart';
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
            Container(
              margin: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('TOP RATED COMICS',
                      style: getGeneraBoldStyle20(color: Colors.black)),
                  const SizedBox(height: 20),
                  SizedBox(
                      height: 430,
                      child: ListView.builder(
                        itemCount: comicModelList.length,
                        itemBuilder: (context, index) {
                          final ComicModel comicData = comicModelList[index];
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: SizedBox(
                                width: 206,
                                child: ComicCard(comicData),
                              ),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      )
                      )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
