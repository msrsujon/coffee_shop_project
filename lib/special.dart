// ignore_for_file: prefer_const_constructors, prefer_constructors

import 'package:coffee_shop_project/Widgets/BoldText.dart';
import 'package:coffee_shop_project/Widgets/LightText.dart';
import 'package:flutter/material.dart';

class special extends StatelessWidget {
  special({super.key});

  List Name = ['Cappuccino', 'Espresso', 'Latte', 'Flat', 'Wallio'];
  List dolar = ['4.5', '3.2', '3.6', '4.2', '3.5'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: dolar.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 330,
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Row(
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
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15.0,
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BoldText(
                                text: '5 Coffee Beans You\nMust Try!',
                                size: 17,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              LightText(
                                text: 'Coffee with Oat Milk for you',
                                size: 12,
                                color: Colors.white.withOpacity(0.7),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        BoldText(
                                          text: '\$',
                                          size: 30,
                                          color:
                                              Color.fromRGBO(243, 122, 43, 1.0),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        BoldText(
                                          text: dolar[index],
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 40.0),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(243, 122, 43, 1.0),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
