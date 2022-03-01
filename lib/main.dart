import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'src/app_widget.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
      ),
    ],
    child: MyApp(),
  ));
}
