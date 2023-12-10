import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_test/common/theme/color_constants.dart';
import 'package:page_test/common/widgets/border_radius_constants.dart';

class Custom1CardJob extends StatelessWidget {
  final String icon;
  final String text1;

  const Custom1CardJob({
    required this.icon,
    required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      shadowColor: ColorConstants.ColorGrey_7A,
      color: ColorConstants.ColorBlue_22,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusConstants.circular16,
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
            ),
            Text(text1),
          ],
        ),
      ),
    );
  }
}