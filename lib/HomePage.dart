// ignore_for_file: prefer_const_constructors, prefer_constructors

import 'package:coffee_shop_project/Widgets/BoldText.dart';
import 'package:coffee_shop_project/product.dart';
import 'package:coffee_shop_project/special.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List Name = ['Cappuccino', 'Espresso', 'Latte', 'Flat', 'Wallio'];
  List dolar = ['4.5', '3.2', '3.6', '4.2', '3.5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Icon(
                          Icons.apps,
                          color: Colors.grey.withOpacity(.5),
                          size: 30,
                        ),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Image.asset('Assets/woman.png'),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: BoldText(
                    text: 'Find the best\ncoffee for you',
                    size: 25,
                    align: TextAlign.left,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Find Your coffee',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ))
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.maxFinite,
                  height: 30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Name.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          height: 40,
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                              child: BoldText(
                                  text: Name[index],
                                  size: 17,
                                  color: index == 0
                                      ? Colors.orange.withOpacity(0.8)
                                      : Colors.grey.withOpacity(0.3))),
                        );
                      }),
                ),
                SizedBox(
                  height: 30,
                ),
                product(),
                SizedBox(
                  height: 30,
                ),
                BoldText(text: 'Special Just for You'),
                SizedBox(
                  height: 30,
                ),
                special(),
                //Special part
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.orange,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.grey.withOpacity(0.8),
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: ''),
          ]),
    );
  }
}
