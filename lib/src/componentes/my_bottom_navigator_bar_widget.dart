import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../shared/constantes.dart';

class MyBottomNavigatorBar extends StatelessWidget {
  final void Function(int event) onTap;
  final int selectedIndex;
  const MyBottomNavigatorBar({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(selectedIndex);
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        BottomNavigationBar(
          currentIndex: selectedIndex,
          //selectedItemColor: corWhite,
          //unselectedItemColor: corWhite,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesome.bullseye),
              label: "Atividades",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesome.github),
              label: "Repositórios",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesome.user),
              label: "Sobre o dev",
            ),
          ],
          onTap: onTap,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: corCinza,
              width: 1,
              height: 50,
            ),
            Container(
              color: corCinza,
              width: 1,
              height: 50,
            ),
          ],
        )
      ],
    );
  }
}
