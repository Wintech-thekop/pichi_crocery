import 'package:flutter/material.dart';
import 'package:pichi_grocery_app/services/utils.dart';
import 'package:pichi_grocery_app/widgets/categories_widget.dart';
import 'package:pichi_grocery_app/widgets/text_widget.dart';

class CategiriesScreen extends StatelessWidget {
  CategiriesScreen({Key? key}) : super(key: key);

List<Color> gridColors = [
const Color(0xff53b175),
const Color(0xFFA0B153),
const Color(0xFF4BD6E0),
const Color(0xFFE682BB),
const Color(0xFFACEF85),
const Color(0xFFAA79DD),
];

  List<Map<String, dynamic>> catInfo = [
    {
    'imgPath' : 'assets/images/cat/fruits.png',
    'catText' : 'Fruits',
    },
    {
    'imgPath' : 'assets/images/cat/veg.png',
    'catText' : 'Vegetable',
    },
    {
    'imgPath' : 'assets/images/cat/Spinach.png',
    'catText' : 'Herbs',
    },
    {
    'imgPath' : 'assets/images/cat/nuts.png',
    'catText' : 'Nuts',
    },
    {
    'imgPath' : 'assets/images/cat/grains.png',
    'catText' : 'Grains',
    },
    {
    'imgPath' : 'assets/images/cat/spices.png',
    'catText' : 'Spices',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: 'Categories',
          color: color,
          textSize: 24,
          isTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 240 / 250,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(6, (index) {
            return CategoriesWidget(
              catText: catInfo[index]['catText'],
              imgPath: catInfo[index]['imgPath'],
              passedColor: gridColors[index],
            );
          }),
        ),
      ),
    );
  }
}
