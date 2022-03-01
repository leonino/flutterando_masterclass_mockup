import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  ChangeThemeButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeProvider = context.watch<ThemeProvider>();

    return IconButton(
      icon: Icon(
        FontAwesome5Solid.moon,
        color: Theme.of(context).appBarTheme.actionsIconTheme?.color,
      ),
      onPressed: () {
        var isDark = themeProvider.isDarkTheme;
        themeProvider.toggleTheme(!isDark);
      },
    );
  }
}
