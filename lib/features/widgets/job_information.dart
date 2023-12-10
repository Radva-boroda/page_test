import 'package:flutter/material.dart';
import 'package:page_test/common/theme/color_constants.dart';
import 'package:page_test/common/theme/image_constants.dart';
import 'package:page_test/common/widgets/border_radius_constants.dart';
import 'package:page_test/features/widgets/custom1_card_job.dart';
import 'package:page_test/features/widgets/custom_card2_job.dart';

class JobInformation extends StatelessWidget {

  const JobInformation({Key? key,
  }) : super(key: key);

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
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomCard2Job(
                icon: ImageConstants.check,
                text1: 'My Jobs',
                text2: '10 jobs',
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: CustomCard2Job(
                icon: ImageConstants.forward,
                text1: 'Pending Jobs',
                text2: '5 jobs',
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Custom1CardJob(
                icon: ImageConstants.search,
                text1: 'Find a Job',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
