import 'package:flutter/material.dart';
import 'package:pichi_grocery_app/services/utils.dart';
import 'package:pichi_grocery_app/widgets/text_widget.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    final Color color = utils.color;
    return FittedBox(
      child: Row(
        children: [
          TextWidget(
            text: '\$1.39',
            color: Colors.green,
            textSize: 22,
          ),
          const SizedBox(width: 5),
          Text(
            "\$1.99",
            style: TextStyle(
                fontSize: 15,
                color: color,
                decoration: TextDecoration.lineThrough),
          ),
        ],
      ),
    );
  }
}
