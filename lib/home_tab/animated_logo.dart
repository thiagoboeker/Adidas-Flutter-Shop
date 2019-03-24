import 'package:flutter/material.dart';


class AnimatedLogo extends StatefulWidget {
  _AnimatedLogo createState() => _AnimatedLogo();
}

class _AnimatedLogo extends State<AnimatedLogo> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 0, end: 1).animate(controller)
    ..addListener((){
      setState(() {});
    })
    ..addStatusListener((status){
      if(status == AnimationStatus.completed) {
        controller.reverse();
      } else if(status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/adidas-logo-alpha4.png'
        ),
        Container(
          child: Opacity(
          opacity: animation.value,
          child: Text("Entrar", style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
            fontSize: 28,
          ),)
          )),
      ],
    );
  }
}