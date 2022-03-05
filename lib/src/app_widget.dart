import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/main.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/animacoes/explicitas/animacoes_explicitas_01.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/animacoes/explicitas/animacoes_explicitas_02.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/animacoes/implicitas/animacoes_implicitas_01.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/animacoes/implicitas/animacoes_implicitas_02.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/atividades/exercicios_page.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/home/home_page.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/mockups/mockup_tinder_page.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/mockups/mockup_under_control_page.dart';
import 'package:flutterando_mastersclass_mockups/src/provider/theme_provider.dart';
import 'package:flutterando_mastersclass_mockups/src/splash/splash_page.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider thema = context.watch<ThemeProvider>();
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: thema.value,
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/exercicio': (context) => const ExerciciosPage(),
        '/animacoes': (context) => const ExerciciosPage(),
        '/under': (context) => const UnderControlPage(),
        '/tinder': (context) => const TinderPage(),
        '/impricita01': (context) => const AnimacoesImplicitasExercicio01(),
        '/impricita02': (context) => const AnimacoesImplicitasExercicio02(),
        '/explicita01': (context) => const AnimacoesExplicitasExercicio01(),
        '/explicita02': (context) => const AnimacoesExplicitasExercicio02(),
      },
    );
  }
}
