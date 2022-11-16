import 'package:flutter/material.dart';

import '../constants.dart';

class GenderCard extends StatelessWidget {
  final IconData genderIcon;
  final String? genderText;

  GenderCard({
    required this.genderIcon,
    this.genderText,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        const SizedBox(
          height: 18.0,
        ),
        Text(
          genderText!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
