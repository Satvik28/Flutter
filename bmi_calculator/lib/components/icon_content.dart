import 'package:flutter/material.dart';
import '../constants.dart';

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
          size: kIconSize,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
