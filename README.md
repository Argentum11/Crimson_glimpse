# Crimson glimpse

This is a single page app that roughly introduces Crimson from the anime Ragna Crimson

## used flutter widgets

### Text

![Text](https://github.com/Argentum11/crimson_glimpse/assets/92793837/4166996d-3585-4a88-8306-421893575b43)

In ```CrimsonIntroduction``` statelessWidget

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

![Image](https://github.com/Argentum11/crimson_glimpse/assets/92793837/2acf39c8-9269-47ec-9600-8721571a9c3b)

In ```DragonCard``` statelessWidget

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

![Icon](https://github.com/Argentum11/crimson_glimpse/assets/92793837/08cf4b14-c4e6-462a-89c4-e872567e90c4)

In ```TitleBar``` statelessWidget

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

![Column](https://github.com/Argentum11/crimson_glimpse/assets/92793837/a772f23c-f3f3-4520-8bbc-5f854a778e9b)

In ```CrimsonServants``` statelessWidget

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

![Row](https://github.com/Argentum11/crimson_glimpse/assets/92793837/3e35c5b8-e88e-4318-a88f-9df0f024b7fb)

In ```Servant``` statelessWidget

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

![Row](https://github.com/Argentum11/crimson_glimpse/assets/92793837/ddc30788-3f45-463a-8e40-c10eec6cb408)

In ```Servant``` statelessWidget

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

In ```CrimsonImage``` statelessWidget

```dart
Stack(
  children: [
    Positioned(
      left: 120,
      child: Image(
        image: AssetImage("assets/crimson_center.png"),
        ...
      ),
    ),
    Positioned(
      left: 170,
      child: Image(
        image: AssetImage("assets/crimson_right.png"),
        ...
      ),
    ),
    Positioned(
      left: 100,
      top: 10,
      child: Image(
        image: AssetImage("assets/crimson_left.png"),
        ...
      ),
    ),
  ],
),
```

### SingleChildScrollView

![SingleChildScrollView-1](https://github.com/Argentum11/crimson_glimpse/assets/92793837/acdab677-94a8-4be3-bbca-12797985f3af)
![SingleChildScrollView-2](https://github.com/Argentum11/crimson_glimpse/assets/92793837/7541474b-c76e-4a7e-8fe0-bda26dd43203)

In ```DragonList``` statelessWidget

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

![Image](https://github.com/Argentum11/crimson_glimpse/assets/92793837/2acf39c8-9269-47ec-9600-8721571a9c3b)

```dart
class DragonCard extends statelessWidget {
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

![Row](https://github.com/Argentum11/crimson_glimpse/assets/92793837/3e35c5b8-e88e-4318-a88f-9df0f024b7fb)

```dart
class Servant extends statelessWidget {
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

![Column](https://github.com/Argentum11/crimson_glimpse/assets/92793837/a772f23c-f3f3-4520-8bbc-5f854a778e9b)

```dart
class CrimsonServants extends statelessWidget {
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
