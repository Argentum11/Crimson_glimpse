# Crimson glimpse

This is a single page app that roughly introduces Crimson from the anime Ragna Crimson

## used flutter widgets

### Text

In ```CrimsonIntroduction``` StatelessWidget

```dart
Column(
    ...
    children: [
    ...
    Text("緋紅", style: TextStyle(fontSize: 40)),
    Container(
        ...
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
```

### Image

In ```DragonCard``` StatelessWidget

```dart
Column(
    children: [
    Image.asset(
        "assets/$dragonImage.png",
        ...
    ),
    Text(dragonName, style: TextStyle(fontSize: 20)),
    ],
);
```

### Icon

In ```TitleBar``` StatelessWidget

```dart
Row(
    children: [
    ...
    Icon(
        Icons.people,
        size: 40,
    ),
    ...
    Text(
        title,
        style: TextStyle(fontSize: 30),
    )
    ],
);
```

### Column

In ```CrimsonServants``` StatelessWidget

```dart
Column(
    children: [
    TitleBar(title: "緋紅的僕人"),
    ...servants.map((servant) => Servant(
        imageLeft: servant["imageLeft"],
        imageName: servant["imageName"],
        name: servant["name"],
        description: servant["description"]))
    ],
);
```

### Row

In ```Servant``` StatelessWidget

```dart
Row(
    children: imageLeft
        ? [
            ServantImage(imageName: imageName),
            ServantDescription(name: name, description: description)
            ]
        : [
            ServantDescription(name: name, description: description),
            ServantImage(imageName: imageName)
            ])
```

### Color

In ```Servant``` StatelessWidget

```dart
Container(
    color: Color.fromARGB(255, 240, 214, 214),
    child: Container(
        ...
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
```

### Stack

TODO

### SingleChildScrollView

In ```DragonList``` StatelessWidget

```dart
SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
        ...
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
```

### multiple stateless widget

#### DragonCard

```dart
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
```

#### Servant

```dart
class Servant extends StatelessWidget {
  final bool imageLeft;
  final String imageName, name, description;
  const Servant(
      {super.key,
      required this.imageLeft,
      required this.imageName,
      required this.name,
      required this.description});

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
```

#### CrimsonServants

```dart
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
        ...servants.map((servant) => Servant(
            imageLeft: servant["imageLeft"],
            imageName: servant["imageName"],
            name: servant["name"],
            description: servant["description"]))
      ],
    );
  }
}
```
