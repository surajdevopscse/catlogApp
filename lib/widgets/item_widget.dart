import 'package:catlogapp/model/catlog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () {
            print('Tappped');
          },
          leading: Image.network(
            '${item.image}',
          ),
          title: Text('${item.name}'),
          subtitle: Text('${item.desc}'),
          trailing: Text(
            '\$${item.price}',
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
