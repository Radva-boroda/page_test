import 'package:flutter/material.dart';
import 'package:page_test/common/theme/image_constants.dart';
import 'package:page_test/common/widgets/custom_app_bar.dart';
import 'package:page_test/features/widgets/custom_2_title.dart';
import 'package:page_test/features/widgets/job_information.dart';
import 'package:page_test/features/widgets/information_about_user.dart';
import 'package:page_test/features/widgets/recent_files.dart';

class DashboardPage extends StatelessWidget {
  static const String path = '/dashboard';

  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          centerTitle: true,
          title: 'Dashboard'
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InformationAboutUser(
                nameFile: 'Hello, James',
                percentageContent: 'Cambridge, United Kingdom',
                overflow: TextOverflow.ellipsis,
              ),
              JobInformation(),
              // TwoTextsDesign(
              //   leftText: 'Job Offers',
              //   rightText: 'View All',
              // ),
              // FourElementsDesign(
              //   icon1: ImageConstants.time,
              //   text1: 'Thurs July 11',
              //   icon2: ImageConstants.ellipse,
              //   text2: '9:00 AM - 1:00PM',
              // ),
              TwoTextsDesign(
                leftText: 'Recent Files',
                rightText: 'View All',
              ),
              RecentFiles(
                pngFilePath: ImageConstants.file,
                svgPath: ImageConstants.png,
                text: 'Sink Repair Image',
              ),
            ],
          ),
        ),
      ),
    );
  }
}