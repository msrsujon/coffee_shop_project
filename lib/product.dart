// ignore_for_file: prefer_const_constructors, prefer_constructors

import 'package:coffee_shop_project/Widgets/BoldText.dart';
import 'package:coffee_shop_project/Widgets/LightText.dart';
import 'package:flutter/material.dart';

class product extends StatelessWidget {
  product({super.key});

  List Name = ['Cappuccino', 'Espresso', 'Latte', 'Flat', 'Wallio'];
  List dolar = ['4.5', '3.2', '3.6', '4.2', '3.5'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dolar.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 20),
                width: 170,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 150,
                        height: 160,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('Assets/coffee.jpg')),
                            color: Colors.red.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              width: 60,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(149, 73, 0, 0.5),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Color.fromRGBO(243, 122, 43, 1.0),
                                    ),
                                    BoldText(
                                      text: '4.5',
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 170.0,
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BoldText(
                            text: Name[index],
                            size: 17,
                          ),
                          LightText(
                            text: 'with Oat Milk',
                            size: 12,
                            color: Colors.white.withOpacity(0.7),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    BoldText(
                                      text: '\$',
                                      color: Color.fromRGBO(243, 122, 43, 1.0),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    BoldText(
                                      text: dolar[index],
                                      size: 17,
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(243, 122, 43, 1.0),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
