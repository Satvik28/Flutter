import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPress;
  final IconData data;
  const RoundIconButton({required this.onPress, required this.data})
      : super(key: null);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: kRoundIconButtonDim,
        height: kRoundIconButtonDim,
      ),
      child: Icon(data),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: () {
        onPress();
      },
    );
  }
}
