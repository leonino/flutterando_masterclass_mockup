import 'package:flutter/material.dart';

import 'bottom_card_atividade_widget.dart';
import 'top_card_atividade_widget.dart';

class CardAtividadeWidget extends StatelessWidget {
  const CardAtividadeWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          height: 220,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopCardAtividadeWidget(item: item),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  item['description'],
                ),
              ),
              BottomCardAtividadeWidget(item: item),
            ],
          ),
        ),
      ),
    );
  }
}
