import 'package:flutter/material.dart';



class AnimatedGradient extends StatefulWidget {

  final Widget logoWidget;

  AnimatedGradient(this.logoWidget);

  _AnimatedGradient createState() => _AnimatedGradient(logoWidget);

}

class _AnimatedGradient extends State<AnimatedGradient> with SingleTickerProviderStateMixin {

  Animation animation;
  AnimationController controller;
  Widget logoWidget;

  _AnimatedGradient(this.logoWidget);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(milliseconds: 2000), vsync: this);
    animation = Tween<double>(begin: 1, end: 2)
        .animate(controller)
        ..addListener(() {
          setState(() {

          });
        })..addStatusListener((status) {
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
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: logoWidget,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.lerp(Alignment.bottomRight, Alignment.topLeft,  animation.value),
              end: Alignment.lerp(Alignment.bottomLeft, Alignment.topRight, animation.value),
              colors: [Colors.blueGrey, Colors.white70]
          )
      ),
    );
  }







}