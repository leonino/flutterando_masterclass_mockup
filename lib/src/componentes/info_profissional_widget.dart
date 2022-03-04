import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/models/profissional_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../shared/constante_cores.dart';

class InfoProfissionalWidget extends StatelessWidget {
  final ProfissionalModel profissionalInfo;
  const InfoProfissionalWidget({
    Key? key,
    required this.profissionalInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var info = profissionalInfo;
    return Container(
      height: 320,
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).highlightColor,
              radius: 58,
              backgroundImage: AssetImage(info.imageUrl),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).iconTheme.color,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              info.nome,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              info.description,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          Container(
            height: 30,
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: info.redesSociais.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = info.redesSociais[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: IconButton(
                      icon: Icon(
                        item.tipo.icon,
                        size: 32,
                        color: Theme.of(context).highlightColor,
                        semanticLabel: item.tipo.title,
                      ),
                      onPressed: () {
                        launch(item.url);
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
