import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/shared/widget/change_theme_button_widget.dart';

class MockupPage extends StatelessWidget {
  const MockupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mockup"),
        actions: [ChangeThemeButtonWidget()],
      ),
      body: Container(),
    );
  }
}
