import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:page_test/common/theme/color_constants.dart';

  class EwNavBarTab {
  final String label;
  final String asset;
  final String path;

  const EwNavBarTab(this.label, this.asset, this.path);
  }

  class EwNavBar extends StatelessWidget {
    final EwNavBarTab dashboard;
    final EwNavBarTab jobMarket;
    final EwNavBarTab add;
    final EwNavBarTab calendar;
    final EwNavBarTab massages;
    final String location;
    final TextAlign textAlign;

    const EwNavBar({
      Key? key,
      required this.dashboard,
      required this.add,
      required this.jobMarket,
      required this.location,
      required this.textAlign,
      required this.calendar,
      required this.massages,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      final labelStyle = Theme.of(context).textTheme.bodySmall;
      return SafeArea(
        top: false,
        child: Container(
          height: 96,
          padding: const EdgeInsets.only(left: 2, right: 2, top: 4, bottom: 2),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (location == dashboard.path) return;
                      context.go(dashboard.path);
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          dashboard.asset,
                          colorFilter: ColorFilter.mode(
                            _getColor(dashboard),
                            BlendMode.srcIn,
                          ),
                          height: 24.0,
                          width: 24.0,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          dashboard.label,
                          style: labelStyle?.copyWith(
                            color: _getColor(dashboard),
                          ),
                          textAlign: textAlign,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (location == jobMarket.path) return;
                      context.go(jobMarket.path);
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          jobMarket.asset,
                          colorFilter: ColorFilter.mode(
                            _getColor(jobMarket),
                            BlendMode.srcIn,
                          ),
                          height: 24.0,
                          width: 24.0,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          jobMarket.label,
                          style: labelStyle?.copyWith(
                            color: _getColor(jobMarket),
                          ),
                          textAlign: textAlign,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        if (location == add.path) return;
                        context.go(add.path);
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            add.asset,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (location == calendar.path) return;
                      context.go(calendar.path);
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          calendar.asset,
                          colorFilter: ColorFilter.mode(
                            _getColor(calendar),
                            BlendMode.srcIn,
                          ),
                          height: 24.0,
                          width: 24.0,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          calendar.label,
                          style: labelStyle?.copyWith(
                            color: _getColor(calendar),
                          ),
                          textAlign: textAlign,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (location == massages.path) return;
                      context.go(massages.path);
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          massages.asset,
                          colorFilter: ColorFilter.mode(
                            _getColor(massages),
                            BlendMode.srcIn,
                          ),
                          height: 24.0,
                          width: 24.0,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          massages.label,
                          style: labelStyle?.copyWith(
                            color: _getColor(massages),
                          ),
                          textAlign: textAlign,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    Color _getColor(EwNavBarTab tab) {
      return location == tab.path
          ? ColorConstants.ColorBlue_5D
          : ColorConstants.ColorGrey_7A;
    }
  }
