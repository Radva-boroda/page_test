import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_test/common/theme/color_constants.dart';
import 'package:page_test/common/widgets/border_radius_constants.dart';

class CustomCard2Job extends StatelessWidget {
  final String icon;
  final String text1;
  final String text2;

  const CustomCard2Job({
    required this.icon,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      shadowColor: ColorConstants.ColorGrey_7A,
      color: ColorConstants.ColorWhite_FA,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusConstants.circular16,
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
            ),
            Text(text1),
            Text(text2),
          ],
        ),
      ),
    );
  }
}