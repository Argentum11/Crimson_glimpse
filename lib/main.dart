// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:crimson_glimpse/dragons.dart';
import 'package:crimson_glimpse/servants.dart';
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
      debugShowCheckedModeBanner: false,
    );
  }
}

class CrimsonGlimpse extends StatelessWidget {
  const CrimsonGlimpse({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              CrimsonIntroduction(),
              Divider(
                height: 3,
              ),
              CrimsonServants(),
              OtherDragons(),
            ],
          ),
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
      children: [
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.people,
          size: 40,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 30),
        )
      ],
    );
  }
}

class CrimsonImage extends StatelessWidget {
  const CrimsonImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 392.7,
      height: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/earth.png"),fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 120,
            child: Image(
              image: AssetImage("assets/crimson_center.png"),
              height: 150,
            ),
          ),
          Positioned(
            left: 170,
            child: Image(
              image: AssetImage("assets/crimson_right.png"),
              height: 150,
            ),
          ),
          Positioned(
            left: 100,
            top: 10,
            child: Image(
              image: AssetImage("assets/crimson_left.png"),
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}

class CrimsonIntroduction extends StatelessWidget {
  const CrimsonIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CrimsonImage(),
        Text("緋紅", style: TextStyle(fontSize: 40)),
        Container(
          color: const Color.fromARGB(255, 122, 235, 126),
          padding: EdgeInsets.only(left: 9, right: 5, top: 5, bottom: 5),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                      "第一代翼之王，「翼之血族」的前任血主，為了結束自己的生命和滅絕以龍之神為首的一切龍族而反叛的前任龍王。個性傲慢狡猾，可以為了達到目的而不擇手段；疑心極重，從不相信任何人。異色瞳，左眼是龍的眼睛。擁有隨意改變外型與性別的能力。擁有無數可替換的身體，當一個身體死去時，另一個身體就會出現。")),
            ],
          ),
        )
      ],
    );
  }
}
