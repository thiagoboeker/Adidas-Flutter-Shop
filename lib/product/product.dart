import 'package:flutter/material.dart';


class Product extends StatelessWidget {

  String image;
  String name;
  Product(this.image, this.name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(name)),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Image.asset(image),
      ),
    );
  }
}