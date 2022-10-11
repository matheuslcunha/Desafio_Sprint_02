import 'package:flutter/material.dart';
import 'package:desafio_sprint_2/screens/authentication_screen.dart';
import 'package:desafio_sprint_2/components/shadow_chip.dart';
import 'package:desafio_sprint_2/components/card.dart';
import 'package:desafio_sprint_2/components/card_sqr.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .85,
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/hamburger-home-screen.png'),
                      SizedBox(width: 10),
                      Container(
                        width: MediaQuery.of(context).size.width * .50,
                        child: Text(
                          'Welcome, $authenticationScreen.nameController.text', // TESTE, REMOVER PELA VARIAVEL DA TELA DE AUTH
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color(0xFF27214D),
                              fontSize: 14,
                              fontFamily: "TT Norms Pro",
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 50.0,
                        child: TextButton(
                          child: Image.asset(
                              'assets/images/basket-home-screen.png'),
                          style: TextButton.styleFrom(
                            fixedSize: Size(50, 50),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width * .85,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            iconColor: Color(0xFF86869E),
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Search for fruit salad combos',
                            hintStyle: TextStyle(
                              color: Color(0xFFB4B4C0),
                              fontSize: 16,
                              fontFamily: "TT Norms Pro",
                              fontWeight: FontWeight.w500,
                            ),
                            fillColor: Color(0xFFF5F5F5),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 40,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF5F5F5),
                        ),
                        child:
                            Image.asset('assets/images/filter-home-screen.png'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 50,
                  color: Color(0xFFFAFAFA),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    primary: true,
                    shrinkWrap: true,
                    children: [
                      Wrap(
                        spacing: 4,
                        children: [
                          customChip(chipLabel: 'All'),
                          customChip(chipLabel: 'Salad Combo'),
                          customChip(chipLabel: 'Berry Combo'),
                          customChip(chipLabel: 'Mango Beryy'),
                          customChip(chipLabel: 'Suco de Frutas'),
                          customChip(chipLabel: 'Sacolé de Uva'),
                          customChip(chipLabel: 'Miojo da Turma da Mônica'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width * .8,
                  child: Text(
                    'Recommended Combo',
                    style: TextStyle(
                        fontFamily: 'TT Norms Pro',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF27214D)),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width * .8,
                  height: 200,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      scrollbarTheme: ScrollbarThemeData(
                        thumbColor: MaterialStateProperty.all(
                          Color(0xFFFFA451),
                        ),
                        crossAxisMargin: 200,
                      ),
                    ),
                    child: Scrollbar(
                      controller: ScrollController(
                        initialScrollOffset: 0,
                        keepScrollOffset: true,
                      ),
                      thumbVisibility: true,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        primary: true,
                        shrinkWrap: true,
                        children: [
                          Wrap(
                            spacing: 30,
                            children: [
                              meal(
                                mealPrice: '2,000',
                                mealImage: 'assets/images/honey-lime-combo.png',
                                mealName: 'Honey lime combo',
                              ),
                              meal(
                                mealPrice: '5,000',
                                mealImage:
                                    'assets/images/berry-mango-combo.png',
                                mealName: 'Berry mango combo',
                              ),
                              meal(
                                mealPrice: '7,000',
                                mealImage: 'assets/images/honey-lime-combo.png',
                                mealName: 'teste',
                              ),
                              meal(
                                mealPrice: '10,000',
                                mealImage: 'assets/images/honey-lime-combo.png',
                                mealName: 'teste',
                              ),
                              meal(
                                mealPrice: '10,000',
                                mealImage: 'assets/images/honey-lime-combo.png',
                                mealName: 'teste',
                              ),
                              meal(
                                mealPrice: '10,000',
                                mealImage: 'assets/images/honey-lime-combo.png',
                                mealName: 'teste',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width * .8,
                  child: Wrap(
                    spacing: 20,
                    children: [
                      Text(
                        'Hottest',
                        style: TextStyle(
                            fontFamily: 'TT Norms Pro',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF27214D)),
                      ),
                      Text(
                        'Popular',
                        style: TextStyle(
                            fontFamily: 'TT Norms Pro',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF253F66)),
                      ),
                      Text(
                        'New Combo',
                        style: TextStyle(
                            fontFamily: 'TT Norms Pro',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF253F66)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width * .8,
                  height: 200,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      scrollbarTheme: ScrollbarThemeData(
                        thumbColor: MaterialStateProperty.all(
                          Color(0xFFFFA451),
                        ),
                        crossAxisMargin: 200,
                      ),
                    ),
                    child: Scrollbar(
                      controller: ScrollController(
                        initialScrollOffset: 0,
                        keepScrollOffset: true,
                      ),
                      thumbVisibility: true,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        primary: true,
                        shrinkWrap: true,
                        children: [
                          Wrap(
                            spacing: 30,
                            children: [
                              mealSqr(
                                mealPrice: '2,000',
                                mealImage:
                                    'assets/images/quinoa-fruit-salad.png',
                                mealName: 'Quinoa fruit salad',
                              ),
                              mealSqr(
                                mealPrice: '5,000',
                                mealImage:
                                    'assets/images/tropical-fruit-salad.png',
                                mealName: 'Tropical fruit salad',
                              ),
                              mealSqr(
                                mealPrice: '7,000',
                                mealImage:
                                    'assets/images/melon-fruit-salad.png',
                                mealName: 'Melon fruit salad',
                              ),
                              mealSqr(
                                mealPrice: '10,000',
                                mealImage:
                                    'assets/images/melon-fruit-salad-big.png',
                                mealName: 'Melon fruit salad',
                              ),
                              mealSqr(
                                mealPrice: '10,000',
                                mealImage: 'assets/images/honey-lime-combo.png',
                                mealName: 'teste',
                              ),
                              mealSqr(
                                mealPrice: '10,000',
                                mealImage: 'assets/images/honey-lime-combo.png',
                                mealName: 'testeeeeeeeeeeeeeeeeeeeeeeeeeeee',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
