import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_test/common/theme/color_constants.dart';
import 'package:page_test/common/theme/image_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final EdgeInsets padding;
  final bool centerTitle;
  final Color? containerColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.centerTitle = false,
    this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: padding,
          color: ColorConstants.ColorBlue_E6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              ImageConstants.menu,
              height: 20.0,
              width: 20.0,
            ),
            Expanded(
              child: Align(
                alignment: centerTitle ? Alignment.center : Alignment.centerLeft,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(
              ImageConstants.bell,
              height: 20.0,
              width: 20.0,
            ),
          ],
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size(10, 60);
}