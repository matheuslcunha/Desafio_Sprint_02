import 'package:flutter/material.dart';
import 'package:desafio_sprint_2/home_screen.dart';

class orderCompleteScreen extends StatelessWidget {
  const orderCompleteScreen({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/order-taken.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: Text(
                        'Order Taken',
                        style: TextStyle(
                          color: Color(0xFF27214D),
                          fontSize: 32,
                          fontFamily: "TT Norms Pro",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: Text(
                        'Your order have been taken and is being attended to',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF27214D),
                          fontSize: 16,
                          fontFamily: "TT Norms Pro",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: Size(230, 50),
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
                      child: Text("Track Order"),
                      onPressed: () => print("alo, mamae!"), //teste
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: Size(190, 50),
                        textStyle: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontFamily: "TT Norms Pro",
                          fontWeight: FontWeight.w500,
                        ),
                        backgroundColor: Color(0xFFFCF6F0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("Continue Shopping"),
                      onPressed: () => {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homeScreen(),
                          ),
                        ),
                      },
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
