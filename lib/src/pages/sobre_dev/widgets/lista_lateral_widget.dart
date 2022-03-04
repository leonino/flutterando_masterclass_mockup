import 'package:flutter/material.dart';

import '../../../controllers/habilidade_controller.dart';

class ListaLateralWidget extends StatelessWidget {
  final HabilidadeController habilidadeController;
  const ListaLateralWidget({
    Key? key,
    required this.habilidadeController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var habilidades = habilidadeController.fetchAll();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tecnologias Favoritas",
            style: Theme.of(context).textTheme.headline3,
          ),
          Container(
            height: 110,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: habilidades.length,
                itemBuilder: (_, index) {
                  var item = habilidades[index];
                  return Container(
                    margin: EdgeInsets.only(top: 8, right: 8),
                    width: 100,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardTheme.color,
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            item.imageUrl,
                            //color: Theme.of(context).highlightColor,
                            width: 48,
                            height: 48,
                          ),
                        ),
                        Text(
                          item.nome,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
