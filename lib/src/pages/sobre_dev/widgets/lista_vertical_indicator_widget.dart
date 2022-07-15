import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/models/habilidade_model.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../controllers/habilidade_controller.dart';

class ListaVerticalIndicatorWidget extends StatefulWidget {
  final HabilidadeController habilidadeController;
  const ListaVerticalIndicatorWidget(
      {Key? key, required this.habilidadeController})
      : super(key: key);

  @override
  State<ListaVerticalIndicatorWidget> createState() =>
      _ListaVerticalIndicatorWidgetState();
}

class _ListaVerticalIndicatorWidgetState
    extends State<ListaVerticalIndicatorWidget> {
  final List<HabilidadeModel> habilidades = [];

  Future<void> getHabilidade() async {
    widget.habilidadeController.fetchAll().then((value) {
      if (habilidades.length == 0) {
        habilidades.addAll(value);
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Habilidades e Competências",
            style: Theme.of(context).textTheme.headline3,
          ),
          Container(
            width: double.infinity,
            height: 220,
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).cardTheme.color,
              borderRadius: BorderRadius.circular(28),
            ),
            child: FutureBuilder(
              future: getHabilidade(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return ListView.builder(
                  itemCount: habilidades.length,
                  itemBuilder: (context, index) {
                    var item = habilidades[index];
                    var percent = (item.percentHabilidade / 100);
                    var xWidth = MediaQuery.of(context).size.width / 3;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LinearPercentIndicator(
                        lineHeight: 8.0,
                        percent: percent,
                        progressColor: Theme.of(context).primaryColor,
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        barRadius: Radius.circular(50),
                        leading: Container(
                          width: xWidth,
                          child: Text(item.nome),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
