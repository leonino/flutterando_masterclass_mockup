import 'package:flutter/material.dart';

class TopCardAtividadeWidget extends StatelessWidget {
  const TopCardAtividadeWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryIconTheme.color,
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
    );
  }
}
