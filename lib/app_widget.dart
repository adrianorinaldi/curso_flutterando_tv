import 'package:curso_flutterando_tv/app_controller.dart';
import 'package:curso_flutterando_tv/login_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
          ),
          initialRoute: "/",
          routes: {
            "/": (context) => LoginPage(),
            "/home": (context) => HomePage(),
          },
        );
      },
    );
  }
}