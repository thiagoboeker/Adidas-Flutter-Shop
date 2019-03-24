import 'package:flutter/material.dart';
import 'package:adidas_shop/home_tab/home_tab.dart';
void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Adidas Shop",
      home: Material(
          child: HomeTab()
      )
    );
  }
}