import 'package:flutter/material.dart';
import 'package:desafio_sprint_2/components/bright_chip.dart';
import 'package:desafio_sprint_2/order_complete_screen.dart';

class addToBasketScreen extends StatelessWidget {
  addToBasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color(0xFFFFA451),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    color: Color(0xFFFFA451),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-0.9, -0.7),
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Color(0xCC333333),
                              size: 20.0,
                            ),
                            label: Text(
                              'Go back',
                              style: TextStyle(
                                color: Color(0xFF27214D),
                                fontSize: 12,
                                fontFamily: "TT Norms Pro",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, 0.5),
                          child: Container(
                            height: 200,
                            width: 200,
                            child: Image.asset(
                                'assets/images/melon-fruit-salad-big.png'), // USAR VARIAVEL AQUI
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                    ),
                    child: LayoutBuilder(
                      builder: (_, constraints) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Container(
                                width: constraints.maxWidth * 0.8,
                                child: Text(
                                  'Quinoa Fruit Salad', // USAR VARIAVEL AQUI
                                  style: TextStyle(
                                    color: Color(0xFF27214D),
                                    fontSize: 24,
                                    fontFamily: "TT Norms Pro",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: constraints.maxWidth * 0.8,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.horizontal_rule,
                                            color: Color(0xFFF08626),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              fontFamily: 'TT Norms Pro',
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF27214D),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.add,
                                            color: Color(0xFFF08626),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.attach_money,
                                            color: Color(0xFF27214D),
                                          ),
                                          Text(
                                            '2,000',
                                            style: TextStyle(
                                              fontFamily: 'TT Norms Pro',
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF27214D),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25),
                              Container(
                                width: constraints.maxWidth * 0.8,
                                child: Text(
                                  'This combo contains:',
                                  style: TextStyle(
                                    fontFamily: 'TT Norms Pro',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF27214D),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: constraints.maxWidth * 0.8,
                                //color: Colors.pink,
                                child: Wrap(
                                  spacing: 8,
                                  children: [
                                    brightChip(chipLabel: 'Red Quinoa'),
                                    brightChip(chipLabel: 'Lime'),
                                    brightChip(chipLabel: 'Honey'),
                                    brightChip(chipLabel: 'Blueberries'),
                                    brightChip(chipLabel: 'Mango'),
                                    brightChip(chipLabel: 'Strawberries'),
                                    brightChip(chipLabel: 'Freshmint'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: constraints.maxWidth * 0.8,
                                child: Text(
                                  'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you.',
                                  style: TextStyle(
                                    fontFamily: 'TT Norms Pro',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF333333),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25),
                              Container(
                                width: constraints.maxWidth * 0.8,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.favorite_border_outlined,
                                      color: Color(0xFFF08626),
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
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Text("Add To Basket"),
                                        onPressed: () => {
                                              Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      orderCompleteScreen(),
                                                ),
                                              ),
                                            }),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
