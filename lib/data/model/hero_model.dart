
import 'package:flutter/material.dart';
import 'package:supertomic/theme/colors.dart';

class HeroModel {
  String heroImage;
  String name;
  Color backgroundColor;

  HeroModel({
    required this.heroImage,
    required this.name,
    required this.backgroundColor,
  });
}

var heroList = [
  HeroModel(
    heroImage: 'assets/images/heroes/superman.png', 
    name: 'Superman', 
    backgroundColor: darkBlue
    ),
  HeroModel(
    heroImage: 'assets/images/heroes/spiderman.png', 
    name: 'Spiderman', 
    backgroundColor: lust
    ),
  HeroModel(
    heroImage: 'assets/images/heroes/batman.png', 
    name: 'Batman', 
    backgroundColor: japaneseIndigo
    ),
  HeroModel(
    heroImage: 'assets/images/heroes/thor.png', 
    name: 'Thor', 
    backgroundColor: blueGray
    ),
  HeroModel(
    heroImage: 'assets/images/heroes/wonder_woman.png', 
    name: 'Wonder Woman', 
    backgroundColor: oliveGreen
    ),
  HeroModel(
    heroImage: 'assets/images/heroes/captain_america.png', 
    name: 'Captain America', 
    backgroundColor: gray
    ),
];
