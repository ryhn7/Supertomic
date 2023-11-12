import 'package:flutter/material.dart';
import 'package:supertomic/theme/style.dart';

class HeroesCard extends StatelessWidget {
  const HeroesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 206),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset('assets/images/comics/detective_comics', height: 300),
          ),
          const SizedBox(height: 12),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 190),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "comicData.title",
                  overflow: TextOverflow.ellipsis,
                  style: getComicBookRegular14(color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  "comicData.author",
                  style: getComicBookRegular14(color: Colors.grey),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: [
                Image.asset('assets/images/star.png', width: 20, height: 20),
                const SizedBox(width: 4),
                Text(
                  "4.8",
                  style: getComicBookRegular14(color: Colors.black),
                ),
              ]),
              Image.asset("assets/images/dc_logo", width: 40, height: 50),
            ],
          )
        ],
      ),
    );
  }
}
