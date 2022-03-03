import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../shared/constantes.dart';

class AtividadesPage extends StatelessWidget {
  const AtividadesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        child: ListView.builder(
          itemCount: ATIVIDADES.length,
          itemBuilder: (context, index) {
            Map<String, dynamic> item = ATIVIDADES[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  height: 220,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).primaryIconTheme.color,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(
                                  item['icon'],
                                  size: 30,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                item['title'],
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Exercicios:",
                                style: Theme.of(context).textTheme.caption,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '${item['data'].length}',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          item['description'],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesome.github,
                                    color: Theme.of(context)
                                        .appBarTheme
                                        .actionsIconTheme
                                        ?.color,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Acessar código fonte",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Color(corPrimaria),
                                  borderRadius: BorderRadius.circular(50)),
                              child: TextButton(
                                child: Text(
                                  "Ver Mais",
                                  style: TextStyle(
                                    color: corWhite,
                                    fontSize: 12,
                                  ),
                                ),
                                style: ButtonStyle(),
                                onPressed: () {
                                  Navigator.of(context).pushNamed(
                                    '/exercicio',
                                    arguments: item,
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
