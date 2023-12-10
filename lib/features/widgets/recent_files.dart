import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

  class RecentFiles extends StatelessWidget {
    final String pngFilePath;
    final String svgPath;
    final String text;

    const RecentFiles({
      Key? key,
      required this.pngFilePath,
      required this.svgPath,
      required this.text,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      final textTheme = Theme.of(context).textTheme;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            pngFilePath,
            width: 100,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  svgPath,
                  width: 16.0,
                  height: 12.0,
                ),
                const SizedBox(width: 4.0),
                // Text
                Text(
                  text,
                  style: textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      );
    }
  }