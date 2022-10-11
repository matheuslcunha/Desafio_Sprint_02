import 'package:desafio_sprint_2/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:desafio_sprint_2/home_screen.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(color: Colors.white),
      Container(
        width: 230,
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.cover,
          ),
        ),
      )
    ]);
  }
}
