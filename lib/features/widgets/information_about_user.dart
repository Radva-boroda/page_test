import 'package:flutter/material.dart';
import 'package:page_test/common/theme/image_constants.dart';

class InformationAboutUser extends StatelessWidget {
  final String nameFile;
  final String percentageContent;

  const InformationAboutUser({Key? key,
    required this.nameFile,
    required this.percentageContent,
    required TextOverflow overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(ImageConstants.imagesAvatars),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  nameFile,
                  style: textTheme.titleSmall
                ),
                const SizedBox(width: 8),
                Text(
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  percentageContent,
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}