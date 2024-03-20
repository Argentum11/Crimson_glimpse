# Crimson glimpse

This is a single page app that roughly introduces Crimson from the anime Ragna Crimson

## used flutter widgets

### Text

![Text](https://github.com/Argentum11/crimson_glimpse/assets/92793837/3f3f2757-c89e-45aa-915d-a6495e3123e2)

In ```CrimsonIntroduction``` statelessWidget

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    CrimsonImage(),
    Transform(
      transform: Matrix4.skewY(-0.2),
      child: Text(
        "緋紅",...
      ),
    ),
    ClipRRect(borderRadius: BorderRadius.circular(27),
      child: Container(
        ...
        child: Row(
          children: [
            Expanded(
              child: Text(
                  "第一代翼之王，「翼之血族」的前任血主，為了結束自己的生命和滅絕以龍之神為首的一切龍族而反叛的前任龍王。個性傲慢狡猾，可以為了達到目的而不擇手段；疑心極重，從不相信任何人。異色瞳，左眼是龍的眼睛。擁有隨意改變外型與性別的能力。擁有無數可替換的身體，當一個身體死去時，另一個身體就會出現。"),
            ),
          ],
        ),
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

### Stack & Positioned

![Stack](https://github.com/Argentum11/crimson_glimpse/assets/92793837/fc881430-6b9a-4f7e-ab65-4dbf456b1b18)

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

### Container

![Stack](https://github.com/Argentum11/crimson_glimpse/assets/92793837/fc881430-6b9a-4f7e-ab65-4dbf456b1b18)

In ```CrimsonImage``` statelessWidget

```dart
Container(
  width: 392.7,
  height: 170,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/earth.png"),fit: BoxFit.cover,
    ),
  ),
  child: Stack(
    children: [
      ...
      Positioned(
        left: 170,
        child: Image(
          image: AssetImage("assets/crimson_right.png"),
          height: 150,
        ),
      ),
      ...
    ],
  ),
);
```

### SizedBox

![SizedBox](https://github.com/Argentum11/crimson_glimpse/assets/92793837/88cc4fef-6d3e-43e3-aaf7-56dbb56a932f)

In ```TitleBar``` statelessWidget

```dart
Row(
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
```

### Expanded

![Text](https://github.com/Argentum11/crimson_glimpse/assets/92793837/3f3f2757-c89e-45aa-915d-a6495e3123e2)

In ```CrimsonIntroduction``` statelessWidget

```dart
Row(
  children: [
    Expanded(
      child: Text(
          "第一代翼之王，「翼之血族」的前任血主，為了結束自己的生命和滅絕以龍之神為首的一切龍族而反叛的前任龍王。個性傲慢狡猾，可以為了達到目的而不擇手段；疑心極重，從不相信任何人。異色瞳，左眼是龍的眼睛。擁有隨意改變外型與性別的能力。擁有無數可替換的身體，當一個身體死去時，另一個身體就會出現。"),
    ),
  ],
),
```

### SafeArea

![SafeArea](https://github.com/Argentum11/crimson_glimpse/assets/92793837/a154c57e-50b4-49eb-8aaa-f5b8f454fd41)

In ```CrimsonGlimpse``` statelessWidget

```dart
SafeArea(
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
```

### Divider

![Divider](https://github.com/Argentum11/crimson_glimpse/assets/92793837/03590212-6334-46b5-bfb4-4ac05e3d0b48)

In ```CrimsonGlimpse``` statelessWidget

```dart
SafeArea(
  child: Column(
    children: [
      ...
      Divider(
        height: 3,
      ),
      ...
    ],
  ),
),
```

### Transform

![Transform](https://github.com/Argentum11/crimson_glimpse/assets/92793837/ac77b8f0-9ed8-4787-938c-b4c36df33fa3)

In ```CrimsonIntroduction``` statelessWidget

```dart
Transform(
  transform: Matrix4.skewY(-0.2),
  child: Text(
    "緋紅",
    style: TextStyle(
        color: Color.fromARGB(255, 226, 48, 35), fontSize: 40),
  ),
),
```

### ClipRRect

![Text](https://github.com/Argentum11/crimson_glimpse/assets/92793837/3f3f2757-c89e-45aa-915d-a6495e3123e2)

In ```CrimsonIntroduction``` statelessWidget

```dart
ClipRRect(borderRadius: BorderRadius.circular(27),
  child: Container(
    color: const Color.fromARGB(255, 122, 235, 126),
    padding: EdgeInsets.only(left: 9, right: 5, top: 5, bottom: 5),
    child: Row(
      children: [
        Expanded(
          child: Text(
              "第一代翼之王，「翼之血族」的前任血主，為了結束自己的生命和滅絕以龍之神為首的一切龍族而反叛的前任龍王。個性傲慢狡猾，可以為了達到目的而不擇手段；疑心極重，從不相信任何人。異色瞳，左眼是龍的眼睛。擁有隨意改變外型與性別的能力。擁有無數可替換的身體，當一個身體死去時，另一個身體就會出現。"),
        ),
      ],
    ),
  ),
)
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
class Servant extends StatelessWidget {
  final bool imageLeft;
  final String imageName, name, description;
  const Servant.imageLeft(
      {super.key,
      required this.imageName,
      required this.name,
      required this.description})
      : imageLeft = true;
  const Servant.imageRight(
      {super.key,
      required this.imageName,
      required this.name,
      required this.description})
      : imageLeft = false;

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
class CrimsonServants extends StatelessWidget {
  const CrimsonServants({super.key});
  final List<Map<String, dynamic>> servants = const [
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
```
