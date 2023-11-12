import 'package:flutter/material.dart';
import 'package:supertomic/data/model/hero_model.dart';
import 'package:supertomic/theme/colors.dart';

class HeroesCard extends StatelessWidget {
  // final HeroModel heroData;
  const HeroesCard({super.key});

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 50;

    return Container(
      width: avatarRadius * 2, // Diameter of the circle
      height: avatarRadius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: lust,
      ),
      child: OverflowBox(
        minWidth: 0.0,
        minHeight: 0.0,
        maxWidth: double.infinity,
        maxHeight: double.infinity,
        child: Image.asset(
          'assets/images/heroes/spiderman.png',
          width: 130,
          height: 130,
        ),
      ),
    );
  }
}
