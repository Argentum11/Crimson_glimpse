// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:crimson_glimpse/main.dart';
import 'package:flutter/material.dart';

class OtherDragons extends StatelessWidget {
  const OtherDragons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [TitleBar(title: "其他翼之血族"), DragonList()],
    );
  }
}

class DragonCard extends StatelessWidget {
  final String dragonName;
  final String dragonImage;
  // Constructor with named parameter for dragonName
  const DragonCard(
      {super.key, required this.dragonName, required this.dragonImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/$dragonImage.png",
          width: 80,
          height: 160,
        ),
        Text(dragonName, style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

class DragonList extends StatelessWidget {
  static const List<Map<String, String>> dragons = [
    {"name": "天翼龍", "image": "wing_dragon"},
    {"name": "雷爪龍", "image": "thunder_dragon"},
    {"name": "風獄龍", "image": "wind_dragon"},
    {"name": "森海龍", "image": "forest_dragon"},
    {"name": "爆塊龍", "image": "strong_dragon"},
    {"name": "狂操龍", "image": "counselor_dragon"},
    {"name": "結界龍", "image": "area_dragon"},
  ];

  const DragonList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.only(left: 35, right: 35),
        child: Row(
          children: dragons
              .map((dragon) => DragonCard(
                    dragonName: dragon["name"]!,
                    dragonImage: dragon["image"]!,
                  ))
              .toList(),
        ),
      ),
    );
  }
}

