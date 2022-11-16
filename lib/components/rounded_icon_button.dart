import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final void Function()? onPressed;

  RoundIconButton({
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF494444),
      constraints: const BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      elevation: 6,
      child: Icon(icon),
    );
  }
}
