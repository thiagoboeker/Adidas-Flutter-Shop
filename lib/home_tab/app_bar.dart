import 'package:adidas_shop/home_tab/animated_gradient.dart';
import 'package:adidas_shop/home_tab/animated_logo.dart';
import 'package:adidas_shop/products_tab/products_tab.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductsTab())
          );
        },
        child:Stack(
          children: <Widget>[
          AnimatedGradient(AnimatedLogo()),
        ],
    ));
  }
}