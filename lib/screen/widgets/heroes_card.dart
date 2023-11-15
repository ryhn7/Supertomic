import 'package:flutter/material.dart';
import 'package:supertomic/data/model/hero_model.dart';
import 'package:supertomic/theme/style.dart';

class HeroesCard extends StatelessWidget {
  final HeroModel heroData;
  const HeroesCard(this.heroData, {super.key});

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 50;

    return Container(
      width: avatarRadius * 2, // Diameter of the circle
      height: avatarRadius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: heroData.backgroundColor,
      ),
      child: OverflowBox(
        minWidth: 0.0,
        minHeight: 0.0,
        maxWidth: double.infinity,
        maxHeight: double.infinity,
        child: Column(
          children: [
            Image.asset(
              heroData.heroImage,
              width: 130,
              height: 130,
            ),
            const SizedBox(height: 8),
            Text(
              heroData.name,
              style: getBangerRegular16(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
