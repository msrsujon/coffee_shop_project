import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BoldText extends StatelessWidget {
  double size;
  final String text;
  final String font;
  final Color? color;
  final TextAlign? align;
  TextOverflow textOverflow;

  BoldText({
    super.key,
    this.textOverflow = TextOverflow.ellipsis,
    this.font = 'font30',
    this.size = 20,
    this.align,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        overflow: textOverflow,
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size,
          fontFamily: font,
          color: color,
        ));
  }
}
