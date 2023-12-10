import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_test/common/theme/color_constants.dart';
import 'package:page_test/common/widgets/border_radius_constants.dart';
import 'package:page_test/routing/ew_router_factory.dart';
import 'common/widgets/underline_input_border_resolver.dart';
import 'features/home/pages/home_page.dart';

void main() {
  runApp(const EwApp());
}

class EwApp extends StatefulWidget {
  const EwApp({Key? key}) : super(key: key);

  @override
  State<EwApp> createState() => _EwAppState();
}

class _EwAppState extends State<EwApp> {
  final _root = GlobalKey<NavigatorState>();
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    final routerFactory = EwRouterFactory(rootKey: _root);
    _router = routerFactory.create(
      initialPath: HomePage.path,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.ColorWhite_F7_bacgraunt,
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: ColorConstants.ColorWhite_FD,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: ColorConstants.ColorWhite_FD,
        ),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          contentPadding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
          border: MaterialStateOutlineInputBorder.resolveWith(
            const UnderlineInputBorderResolver(),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorConstants.ColorBlue_E6,
          toolbarHeight: 60.0,
          elevation: 0.0,
          centerTitle: false,
          titleTextStyle: TextStyle(
            fontSize: 16,
            height: 24 / 16,
            letterSpacing: -0.32,
            fontWeight: FontWeight.w600,
            color: ColorConstants.ColorBlack_24,
          ),
        ),
        sliderTheme: SliderThemeData(
          trackShape: const RectangularSliderTrackShape(),
          overlayShape: SliderComponentShape.noOverlay,
          minThumbSeparation: 0.0,
          trackHeight: 6.0,
        ),
        cardTheme: const CardTheme(
          elevation: 1.0,
          shadowColor: ColorConstants.ColorBlue_E6,
          margin: EdgeInsets.zero,
          color: ColorConstants.ColorGrey_BF,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusConstants.circular8,
          ),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 16,
            height: 24 / 16,
            letterSpacing: -0.32,
            fontWeight: FontWeight.w400,
            color: ColorConstants.ColorWhite_E5,
          ),
          displaySmall: TextStyle(
            fontSize: 38,
            height: 40 / 38,
            letterSpacing: -0.76,
            fontWeight: FontWeight.w400,
            color: ColorConstants.ColorGrey_7A,
          ),
          headlineMedium: TextStyle(
            fontSize: 28,
            height: 32 / 28,
            letterSpacing: -0.56,
            fontWeight: FontWeight.w400,
            color: ColorConstants.ColorWhite_F3,
          ),
          headlineSmall: TextStyle(
            fontSize: 24,
            height: 28 / 24,
            letterSpacing: -0.48,
            fontWeight: FontWeight.w400,
            color: ColorConstants.ColorGrey_7A,
          ),
          titleMedium: TextStyle(
            fontSize: 10,
            height: 14 / 10,
            letterSpacing: -0.28,
            fontWeight: FontWeight.w600,
            color: ColorConstants.ColorBlack_24,
          ),
          titleSmall: TextStyle(
            fontSize: 24,
            height: 24 / 16,
            letterSpacing: -0.32,
            fontWeight: FontWeight.w600,
            color: ColorConstants.ColorBlack_24,
          ),
          //(Dashboard)
          bodyLarge: TextStyle(
            fontSize: 16,
            height: 24 / 16,
            letterSpacing: -0.32,
            fontWeight: FontWeight.w600,
            color: ColorConstants.ColorBlack_24,
          ),
          bodyMedium: TextStyle(
            //(Cambridge)
            fontSize: 14,
            height: 18 / 13,
            letterSpacing: -0.26,
            fontWeight: FontWeight.w400,
            color: ColorConstants.ColorGrey_7A,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            height: 16 / 12,
            letterSpacing: -0.24,
            fontWeight: FontWeight.w500,
            color: ColorConstants.ColorBlue_40,
          ),
        ),
      ),
    );
  }
}
