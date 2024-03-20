// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
    return SizedBox(
      width: 350,
      height: 170,
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
            top:10,
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

class CrimsonServants extends StatelessWidget {
  const CrimsonServants({super.key});
  static const List<Map<String, dynamic>> servants = [
    {
      'imageLeft': true,
      'imageName': 'slime',
      'name': '壞蛋史萊姆',
      'description':
          '由緋紅製造的史萊姆。與魔像和奇美拉關係惡劣。看似可愛內心卻十分腹黑，特別看不起人類。實力很強，具有腐蝕性，擅長偷襲，連上位龍都是他的食物範圍。',
    },
    {
      'imageLeft': false,
      'imageName': 'golem',
      'name': '魔像',
      'description':
          '由緋紅製造的機器人偶。與壞蛋史萊姆和奇美拉關係惡劣。平常擁有多個可供替換的身體，本體其實是個AI，性格輕浮，好色。',
    },
    {
      'imageLeft': true,
      'imageName': 'kimera',
      'name': '奇美拉',
      'description':
          '由緋紅製造的合成獸，與壞蛋史萊姆和魔像關係惡劣。僕人三人組中唯一的女性，擅長打聽情報，卻很不擅長計算。擁有影子空間的能力，可以隨意移動在任何平面。',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleBar(title: "緋紅的僕人"),
        ...servants.asMap().entries.map((entry) {
        final index = entry.key;
        final servant = entry.value;
        if (index.isEven) {
          return Servant.imageLeft(
            imageName: servant["imageName"],
            name: servant["name"],
            description: servant["description"],
          );
        } else {
          return Servant.imageRight(
            imageName: servant["imageName"],
            name: servant["name"],
            description: servant["description"],
          );
        }
      }),
      ],
    );
  }
}

class Servant extends StatelessWidget {
  final bool imageLeft;
  final String imageName, name, description;
  const Servant.imageLeft(
      {super.key,
      required this.imageName,
      required this.name,
      required this.description}):imageLeft= true;
  const Servant.imageRight(
      {super.key,
      required this.imageName,
      required this.name,
      required this.description}):imageLeft= false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 240, 214, 214),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black, width: 1))),
        child: Row(
            children: imageLeft
                ? [
                    ServantImage(imageName: imageName),
                    ServantDescription(name: name, description: description)
                  ]
                : [
                    ServantDescription(name: name, description: description),
                    ServantImage(imageName: imageName)
                  ]),
      ),
    );
  }
}

class ServantImage extends StatelessWidget {
  final String imageName;
  const ServantImage({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 3, right: 3),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/$imageName.png"),
          ),
          shape: BoxShape.circle,
          border: Border.all(width: 5, color: Colors.blue)),
    );
  }
}

class ServantDescription extends StatelessWidget {
  final String name, description;
  const ServantDescription(
      {super.key, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            Text(
              name,
              style: TextStyle(color: Colors.blueAccent, fontSize: 15),
            ),
            Text(description),
          ],
        ),
      ),
    );
  }
}

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
