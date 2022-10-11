import 'package:desafio_sprint_2/authentication_screen.dart';
import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      color: Color(0xFFFFA451),
                      height: 350,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/fruit-basket-welcome-screen.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(25, 30, 25, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Get The Freshest Fruit Salad Combo",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color(0xFF27214D),
                                fontSize: 16,
                                fontFamily: "TT Norms Pro",
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFF5D577E),
                              fontSize: 16,
                              fontFamily: "TT Norms Pro",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 50),
                                elevation: 0,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "TT Norms Pro",
                                  fontWeight: FontWeight.w500,
                                ),
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text("Let's Continue"),
                              onPressed: () => {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            authenticationScreen(),
                                      ),
                                    ),
                                  }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
