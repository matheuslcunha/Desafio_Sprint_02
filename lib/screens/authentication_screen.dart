import 'package:flutter/material.dart';
import 'package:desafio_sprint_2/screens/home_screen.dart';

class authenticationScreen extends StatelessWidget {
  authenticationScreen({super.key});

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: Stack(
            children: [
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                                  "assets/images/fruit-basket-authentication-screen.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 30, 25, 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "What is your firstname?",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color(0xFF27214D),
                                  fontSize: 16,
                                  fontFamily: "TT Norms Pro",
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'Chris',
                                hintStyle: TextStyle(
                                  color: Color(0xFFC2BDBD),
                                  fontSize: 16,
                                  fontFamily: "TT Norms Pro",
                                  fontWeight: FontWeight.w500,
                                ),
                                fillColor: Color(0xFFF7F5F5),
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  minimumSize: Size(100, 50),
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: "TT Norms Pro",
                                    fontWeight: FontWeight.w500,
                                  ),
                                  backgroundColor: Color(0xFFFFA451),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text("Start Ordering"),
                                onPressed: () => {
                                      print(
                                          '$authenticationScreen.$nameController'),
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => homeScreen(),
                                        ),
                                      )
                                    }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
