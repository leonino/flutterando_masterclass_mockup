import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/atividades/atividades_page.dart';

import 'package:flutterando_mastersclass_mockups/src/repositorio_github/repository_github.dart';
import 'package:flutterando_mastersclass_mockups/src/sobre_dev/sobre_dev_page.dart';

import '../componentes/custom_appbar_widget.dart';
import '../componentes/my_bottom_navigator_bar_widget.dart';

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
      appBar: CustomAppBarWidget(
        selectedIndex: _selectedIndex,
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
      bottomNavigationBar: MyBottomNavigatorBar(
        onTap: _onTap,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
