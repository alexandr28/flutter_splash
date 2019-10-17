import 'package:flutter/material.dart';
import 'package:flutter_splash/Splash_Home.dart';
import 'Splash_Screen.dart';
import 'dart:async';
Future main() async{
  runApp(new MaterialApp(
    title: 'FluterSplashDemo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/SplashSreen': (BuildContext context)=> new SplashScreen(),
      '/Splash_Home': (BuildContext context)=> new SplashHome()
    },
  ));
}



