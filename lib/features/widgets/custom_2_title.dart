import 'package:flutter/material.dart';

class TwoTextsDesign extends StatelessWidget {
  final String leftText;
  final String rightText;

  const TwoTextsDesign({
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                leftText,
                style: textTheme.titleMedium,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                rightText,
                style: textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}