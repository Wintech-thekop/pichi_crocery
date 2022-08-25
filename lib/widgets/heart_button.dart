import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pichi_grocery_app/services/utils.dart';

class HeartButton extends StatelessWidget {
  const HeartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    Color color = utils.color;
    final themeState = utils.getTheme;
    Size size = utils.getScreenSize;
    return GestureDetector(
      onTap: () {
        print('Heart button');
      },
      child: Icon(
        IconlyLight.heart,
        size: 22,
        color: color,
      ),
    );
  }
}
