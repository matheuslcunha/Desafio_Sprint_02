import 'package:flutter/material.dart';
import 'package:desafio_sprint_2/screens/splash_screen.dart';
import 'package:desafio_sprint_2/screens/welcome_screen.dart';
import 'package:desafio_sprint_2/screens/authentication_screen.dart';
import 'package:desafio_sprint_2/screens/order_complete_screen.dart';
import 'package:desafio_sprint_2/screens/home_screen.dart';
import 'package:desafio_sprint_2/screens/add_to_basket_screen.dart';
import 'package:desafio_sprint_2/screens/order_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: //splashScreen(),
          welcomeScreen(),
      //authenticationScreen(),
      //orderCompleteScreen(),
      //homeScreen(),
      //addToBasketScreen(),
      //orderListScreen(),
    );
  }
}
