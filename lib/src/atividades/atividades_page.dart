import 'package:flutter/material.dart';

import '../componentes/card_atividade_widget.dart';
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
            return CardAtividadeWidget(item: item);
          },
        ),
      ),
    );
  }
}
