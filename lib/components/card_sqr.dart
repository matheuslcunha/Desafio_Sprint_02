import 'package:flutter/material.dart';
import 'package:desafio_sprint_2/screens/add_to_basket_screen.dart';

class mealSqr extends StatelessWidget {
  mealSqr(
      {Key? key,
      required this.mealPrice,
      required this.mealImage,
      required this.mealName});

  String mealPrice;
  String mealImage;
  String mealName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0.8, -0.8),
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Color(0xFFF08626),
                ),
              ),
              Align(
                alignment: Alignment(0.99, 1),
                child: IconButton(
                  icon: Icon(
                    Icons.circle,
                    color: Color(0xFFFFF2E7),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => addToBasketScreen()),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment(0.8, 0.8),
                child: Icon(
                  Icons.add,
                  color: Color(0xFFF08626),
                ),
              ),
              LayoutBuilder(
                builder: (_, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 75,
                          width: 75,
                          child: Image.asset(
                            mealImage,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: constraints.maxWidth,
                        child: Text(
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          mealName,
                          style: TextStyle(
                            fontFamily: 'TT Norms Pro',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF27214D),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        //color: Colors.amber,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(
                              Icons.attach_money,
                              color: Color(0xFFF08626),
                            ),
                            Text(
                              mealPrice,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFF08626),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
