import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/shared/widget/change_theme_button_widget.dart';

class AnimacoesPage extends StatelessWidget {
  const AnimacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animações"),
        actions: [ChangeThemeButtonWidget()],
      ),
      body: Container(),
    );
  }
}
