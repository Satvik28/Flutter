import 'package:flutter/material.dart';

const iconSize = 70.0;

const textStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF808E98),
);

class IconContent extends StatelessWidget {
  final String genderText;
  final IconData genderIcon;

  const IconContent({required this.genderText, required this.genderIcon})
      : super(key: null);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: iconSize,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: textStyle,
        ),
      ],
    );
  }
}
