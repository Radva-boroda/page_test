import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ElementsDesign extends StatelessWidget {
  final String icon1;
  final String text1;
  final String icon2;
  final String text2;

  const ElementsDesign({super.key,
    required this.icon1,
    required this.text1,
    required this.icon2,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: SvgPicture.asset(
              icon1,
              width: 16,
              height: 16,
            ),
          ),
          Text(
            text1,
            style: textTheme.titleMedium,
          ),
          Expanded(
            child: SvgPicture.asset(
              icon2,
              width: 4,
              height: 4,
            ),
          ),
          Text(
            text2,
            style: textTheme.titleMedium,
            ),
        ],
      ),
    );
  }
}