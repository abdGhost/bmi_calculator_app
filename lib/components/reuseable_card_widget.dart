import 'package:flutter/cupertino.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({
    required this.cardColor,
    this.childWidget,
    this.onTap,
  });

  final Color cardColor;
  final Widget? childWidget;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: childWidget,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
