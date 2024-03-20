// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:crimson_glimpse/main.dart';
import 'package:flutter/material.dart';

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
