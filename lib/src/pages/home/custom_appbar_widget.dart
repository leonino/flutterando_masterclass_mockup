import 'package:flutter/material.dart';

import '../../componentes/change_theme_button_widget.dart';

const PAGINAS = ["Atividades", "Repositórios", "Sobre o dev"];

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({
    Key? key,
    required int selectedIndex,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  final int _selectedIndex;

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 48,
            width: 48,
            child: Image.asset(
              "assets/images/logo/logo.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(PAGINAS[_selectedIndex]),
                Text(
                  "Flutterando MasterClass",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: ChangeThemeButtonWidget(),
        ),
      ],
    );
  }
}
