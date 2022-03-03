import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/atividades/animacoes_page.dart';
import 'package:flutterando_mastersclass_mockups/src/atividades/mockup_page.dart';
import 'package:flutterando_mastersclass_mockups/src/atividades/playgroun_page.dart';
import 'package:flutterando_mastersclass_mockups/src/home/home_page.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/mockup_tinder_page.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/mockup_under_control_page.dart';
import 'package:flutterando_mastersclass_mockups/src/provider/theme_provider.dart';
import 'package:flutterando_mastersclass_mockups/src/splash/splash_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider thema = context.watch<ThemeProvider>();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: thema.value,
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/animacoes': (context) => const AnimacoesPage(),
        '/mockup': (context) => const MockupPage(),
        '/playground': (context) => const PlaygroundPage(),
        '/under': (context) => const UnderControlPage(),
        '/tinder': (context) => const TinderPage(),
      },
    );
  }
}
