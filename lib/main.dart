// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CrimsonGlimpse(),
    );
  }
}

class CrimsonGlimpse extends StatelessWidget {
  const CrimsonGlimpse({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [DragonDetails(), TitleBar(title: "其他翼之血族"), DragonList()],
        ),
      ),
    );
  }
}

class TitleBar extends StatelessWidget {
  final String title;
  const TitleBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [SizedBox(width: 15,),Icon(Icons.people, size: 40,), Text(title,style: TextStyle(fontSize: 30),)],
    );
  }
}

class DragonDetails extends StatelessWidget {
  const DragonDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assets/crimson.jpg"),
            width: 150,
          ),
          Text("緋紅", style: TextStyle(fontSize: 40)),
        ]);
  }
}

class DragonCard extends StatelessWidget {
  final String dragonName; // Parameter for storing the dragon name
  final String dragonImage;
  // Constructor with named parameter for dragonName
  const DragonCard(
      {super.key, required this.dragonName, required this.dragonImage});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        "assets/$dragonImage.png",
        width: 80,
        height: 160,
      ),
      Text(dragonName, style: TextStyle(fontSize: 20)),
    ]);
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
