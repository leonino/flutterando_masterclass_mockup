import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/atividades/atividades_page.dart';
import 'package:flutterando_mastersclass_mockups/src/componentes/change_theme_button_widget.dart';
import 'package:flutterando_mastersclass_mockups/src/repositorio_github/repository_github.dart';
import 'package:flutterando_mastersclass_mockups/src/sobre_dev/sobre_dev_page.dart';

import '../componentes/my_bottom_navigator_bar_widget.dart';
import '../shared/constantes.dart';

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

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({
    Key? key,
    required int selectedIndex,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  final int _selectedIndex;

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

  @override
  Size get preferredSize => Size.fromHeight(56);
}
