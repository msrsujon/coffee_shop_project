import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LightText extends StatelessWidget {
  double size;
  final String text;
  final String font;
  Color color;
  TextOverflow textOverflow;

  LightText({
    super.key,
    this.textOverflow = TextOverflow.ellipsis,
    this.font = 'font30',
    this.size = 20,
    this.color = Colors.white,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        overflow: textOverflow,
        text,
        style: TextStyle(
          fontSize: size,
          fontFamily: font,
          color: color,
        ));
  }
}
