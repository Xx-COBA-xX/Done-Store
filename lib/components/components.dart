// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Color color;
  final String text;
  final double deflutPadding;
  final Function()? press;
  final double radeus;
  final Color textColor;
  final double hieght;
  const DefaultButton(
      {super.key,
      required this.color,
      required this.text,
      required this.deflutPadding,
      required this.press,
      required this.radeus,
      required this.textColor, required this.hieght});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: deflutPadding, vertical: hieght),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(color)),
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
