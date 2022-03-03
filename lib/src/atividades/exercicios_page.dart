import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/componentes/change_theme_button_widget.dart';

class ExerciciosPage extends StatelessWidget {
  const ExerciciosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? []) as Map;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(top: 3, left: 18.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Theme.of(context).appBarTheme.actionsIconTheme?.color,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(arguments['title']),
              Text(
                "Flutterando MasterClass",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ChangeThemeButtonWidget(),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 16, bottom: 10),
        child: ListView.builder(
            itemCount: arguments['data'].length,
            itemBuilder: (_, index) {
              Map<String, dynamic> item = arguments['data'][index];
              return Container(
                  margin: EdgeInsets.symmetric(horizontal: 11, vertical: 4),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardTheme.color,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(item['url']);
                        },
                        child: CircleAvatar(
                          radius: 17,
                          child: Text(
                            '${item['id']}',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        item['title'],
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ));
            }),
      ),
    );
  }
}
