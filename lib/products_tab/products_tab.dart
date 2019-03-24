import 'package:adidas_shop/products_tab/products_card.dart';
import 'package:flutter/material.dart';

class ProductsTab extends StatefulWidget {
  _ProductsTab createState() => _ProductsTab();
}

class _ProductsTab extends State<ProductsTab> with SingleTickerProviderStateMixin {

  List<Map> _productsList;

  @override
  void initState() {
    super.initState();
    _productsList = [
      {'product': 'assets/images/tenis-1.jpg', 'rate': 4.0, 'price': 99.99,  'name': 'Rockstar'},
      {'product': 'assets/images/tenis-2.jpg', 'rate': 3.5, 'price': 199.99, 'name': 'R90'},
      {'product': 'assets/images/tenis-3.jpg', 'rate': 2.0, 'price': 200.00, 'name': 'AD101'},
      {'product': 'assets/images/tenis-4.jpg', 'rate': 1.0, 'price': 300.00, 'name': 'Super'},
      {'product': 'assets/images/tenis-5.jpg', 'rate': 5.0, 'price': 299.00, 'name': 'SoftMax'},
      {'product': 'assets/images/tenis-6.jpg', 'rate': 3.0, 'price': 500.00, 'name': 'T2000'},
      {'product': 'assets/images/tenis-7.jpg', 'rate': 2.0, 'price': 399.00, 'name': 'Extreme'},
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [Colors.blueGrey, Colors.white]
          )
        ),
        child: ListView.builder(
        itemCount: _productsList.length,
        itemBuilder: (context, pos) {
          return ProductsCard(
            _productsList[pos]['product'],
            _productsList[pos]['rate'],
            _productsList[pos]['price'],
            _productsList[pos]['name'],
          );
        }
    ));
  }
}