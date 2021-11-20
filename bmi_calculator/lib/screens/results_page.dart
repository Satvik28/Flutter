import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_app_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: null);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
        ),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kCategoryTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomAppButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonText: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
