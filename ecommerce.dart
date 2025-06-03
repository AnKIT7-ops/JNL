import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: ProductPage()));
class ProductPage extends StatelessWidget {
  final p = [
    {'name': 'Shirt', 'price': '29.99'},
    {'name': 'Shoes', 'price': '49.99'},
    {'name': 'Hat', 'price': '15.99'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shop')),
      body: ListView.builder(
        itemCount: p.length,
        itemBuilder: (_, i) =>ListTile(
            title: Text('${p[i]['name']} (${p[i]['price']})'),
            trailing: ElevatedButton(
              child: Text('Add'),
              onPressed: () =>
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${p[i]['name']} of price ${p[i]['price']} added to cart')),
                ),
            ),
            ),
          ),
      );
  }
}
