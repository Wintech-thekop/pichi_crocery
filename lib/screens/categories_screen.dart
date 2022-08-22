import 'package:flutter/material.dart';
import 'package:pichi_grocery_app/widgets/categories_widget.dart';

class CategiriesScreen extends StatelessWidget {
  const CategiriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CategoriesWidget()),
    );
  }
}
