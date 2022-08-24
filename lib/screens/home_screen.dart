import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pichi_grocery_app/provider/dark_theme_provider.dart';
import 'package:pichi_grocery_app/services/utils.dart';
import 'package:pichi_grocery_app/widgets/on_sale_widget.dart';
import 'package:pichi_grocery_app/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _offerImages = [
    'assets/images/offres/Offer1.jpg',
    'assets/images/offres/Offer2.jpg',
    'assets/images/offres/Offer3.jpg',
    'assets/images/offres/Offer4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    // Color color = utils.color;
    final themeState = utils.getTheme;
    Size size = utils.getScreenSize;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.33,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  _offerImages[index],
                  fit: BoxFit.fill,
                );
              },
              itemCount: _offerImages.length,
              pagination: const SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: DotSwiperPaginationBuilder(
                      color: Colors.white, activeColor: Colors.red)),
              // control: SwiperControl(color: Colors.black),
              autoplay: true,
            ),
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            child: TextWidget(
              text: 'View all',
              color: Colors.blue,
              textSize: 20,
              maxLine: 1,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: Row(
                  children: [
                    TextWidget(
                      text: 'On sale'.toUpperCase(),
                      color: Colors.red,
                      textSize: 22,
                      isTitle: true,
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      IconlyLight.discount,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Flexible(
                child: SizedBox(
                  height: size.height * 0.22,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const OnSaleWidget();
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
