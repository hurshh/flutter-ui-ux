import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class animation1 extends StatefulWidget {
  const animation1({Key? key}) : super(key: key);

  @override
  _animation1State createState() => _animation1State();
}

class _animation1State extends State<animation1> with SingleTickerProviderStateMixin {

  late AnimationController animController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 3)
    );
    final curvedAnimation = CurvedAnimation(parent: animController, curve: Curves.bounceIn, reverseCurve: Curves.easeOut);
    animation = Tween<double>(begin: 0, end: 2 * pi).animate(animController,)..addListener(() {setState(() {
    });})..addStatusListener((status) {
      if(status == AnimationStatus.completed){
        animController.reverse();
      }else if(status == AnimationStatus.dismissed){
        animController.forward();
      }
    });
    animController.forward();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.rotate(
        angle: animation.value,
        child: Center(
            child: Image.asset('assests/bonbon-line-lightning.png',height: 200,width: 200,)
        ),
      ),
    );
  }
  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
