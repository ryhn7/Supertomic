import 'package:flutter/material.dart';
import 'package:supertomic/data/model/comic_model.dart';
import 'package:supertomic/theme/style.dart';

class ComicCard extends StatelessWidget {
  final ComicModel comicData;
  const ComicCard(this.comicData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(comicData.coverImage,
              height: 300),
        ),
        const SizedBox(height: 12),
        Text(
          comicData.title,
          style: getComicBookRegular14(color: Colors.black),
        ),
        const SizedBox(height: 4),
        Text(
          comicData.author,
          style: getComicBookRegular14(color: Colors.grey),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(children: [
              Image.asset('assets/images/star.png', width: 20, height: 20),
              const SizedBox(width: 4),
              Text(
                comicData.rating.toString(),
                style: getComicBookRegular14(color: Colors.black),
              ),
            ]),
            Image.asset(comicData.publisherImage, width: 40, height: 50),
          ],
        )
      ],
    );
  }
}
