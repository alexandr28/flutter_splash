import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:ui';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>  with SingleTickerProviderStateMixin{
  var _visible = true;
  Animation<double> animation;
  AnimationController animationController;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage(){
    Navigator.of(context).pushReplacementNamed('/SplashSreen');
  }
  @override
  void initState() {
    super.initState();
    animationController=new  AnimationController(vsync: this,duration: Duration(seconds: 3));
    animation= Tween<double>(begin: 0,end: -300).animate(animationController)..addListener((){setState(() {});});
    animationController.forward();
    setState(() {
      _visible=!_visible;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/fondo.png'),
                  fit: BoxFit.cover)),
        ),
        Align(
          alignment: AlignmentDirectional(0,0.7),
          child: Transform.translate(
            offset: Offset(0, animation.value),
            child: Container(
              height: 250,
              width: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  )),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Transform.translate(
              offset: Offset(0,animation.value),
              child: Container(
                height: 280,
                width: 410,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/mont.png')
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
}
