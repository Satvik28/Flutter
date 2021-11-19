import 'package:flutter/material.dart';
import '../constants.dart';

class BottomAppButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  const BottomAppButton({required this.buttonText, required this.onTap})
      : super(key: null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: kLargeButtonTextStyle,
        ),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
