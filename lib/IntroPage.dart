// ignore_for_file: prefer_const_constructors,

import 'package:coffee_shop_project/HomePage.dart';
import 'package:coffee_shop_project/Widgets/BoldText.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwardController = TextEditingController();
  GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            //images
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50, top: 10, bottom: 30),
                child: Image.asset(
                  'Assets/1.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  width: 300,
                  height: 50,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.6)),
                  child: Center(
                    child: Text(
                      'Coffee Shop',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              )
            ],

            //container here
          ),
        ),
      ),
    );
  }
}
