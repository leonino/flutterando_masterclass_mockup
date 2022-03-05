import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomCardAtividadeWidget extends StatelessWidget {
  const BottomCardAtividadeWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              launch(item['codigo_fonte_url']);
            },
            child: Row(
              children: [
                Icon(
                  FontAwesome.github,
                  color: Theme.of(context).appBarTheme.actionsIconTheme?.color,
                  size: 20,
                ),
                SizedBox(width: 10),
                Text(
                  "Acessar código fonte",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          Container(
            width: 120,
            height: 35,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(50)),
            child: TextButton(
              child: Text(
                "Ver Mais",
                style: TextStyle(
                  color: Theme.of(context).highlightColor,
                  fontSize: 12,
                ),
              ),
              style: ButtonStyle(),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  "/exercicio",
                  arguments: item,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
