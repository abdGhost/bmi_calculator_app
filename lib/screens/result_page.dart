import 'package:bmi_calculator_app/constants.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../components/reuseable_card_widget.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'YOUR RESULT',
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              cardColor: kActiveCardColour,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultValueTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultBMITextStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      interpretation,
                      style: kResultBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return InputPage();
              //     },
              //   ),
              // );
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
