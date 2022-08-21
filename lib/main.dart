import 'package:flutter/material.dart';
import 'package:pichi_grocery_app/provider/dark_theme_provider.dart';
import 'package:pichi_grocery_app/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'consts/theme_data.dart';
import 'screens/btm_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangedProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangedProvider.setDarkTheme =
        await themeChangedProvider.darkThemePrefs.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return themeChangedProvider;
        })
      ],
      child:
          Consumer<DarkThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Pichi Groecery',
          theme: Styles.themeData(themeProvider.getDarkTheme, context),
          debugShowCheckedModeBanner: false,
          home:  const BottomBarScreen(),
        );
      }),
    );
  }
}
