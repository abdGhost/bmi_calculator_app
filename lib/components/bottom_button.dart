import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({
    required this.onTap,
    required this.buttonTitle,
  });

  final void Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        color: kBottomContainerColour,
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeTextStyle,
          ),
        ),
      ),
    );
  }
}
