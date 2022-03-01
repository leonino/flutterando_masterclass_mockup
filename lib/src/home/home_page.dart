import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutterando_mastersclass_mockups/src/home/atividades_page.dart';
import 'package:flutterando_mastersclass_mockups/src/repositorio_github/repository_github.dart';
import 'package:flutterando_mastersclass_mockups/src/sobre_dev/sobre_dev_page.dart';

import '../shared/constantes.dart';
import '../shared/widget/change_theme_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  int _selectedIndex = 0;

  void _onTap(index) {
    _selectedIndex = index;
    _controller.jumpToPage(_selectedIndex);
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: PageView(
        controller: _controller,
        onPageChanged: (index) => _onTap(index),
        children: <Widget>[
          AtividadesPage(),
          RepositorioGitHubPage(),
          SobreDevPage(),
        ],
      ),
      bottomNavigationBar:
          MyBottomNavigatorBar(onTap: _onTap, selectedIndex: _selectedIndex),
    );
  }
}

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
