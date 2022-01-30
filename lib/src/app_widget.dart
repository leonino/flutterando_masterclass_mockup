import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/mockup_tinder_page.dart';
import 'package:flutterando_mastersclass_mockups/src/pages/mockup_under_control_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const UnderControlPage(),
        '/tinder': (context) => const TinderPage(),
      },
    );
  }
}
