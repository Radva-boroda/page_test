import 'package:flutter/material.dart';
import 'package:page_test/common/theme/color_constants.dart';

class UnderlineInputBorderResolver {
  final Map<MaterialState, Color> _mapping;

  const UnderlineInputBorderResolver()
      : _mapping = const {
          MaterialState.disabled: ColorConstants.ColorBlue_E6,
          MaterialState.hovered: ColorConstants.ColorWhite_F3,
          MaterialState.error: ColorConstants.ColorWhite_F3,
          MaterialState.focused: ColorConstants.ColorWhite_F7_bacgraunt,
        };

  InputBorder call(Set<MaterialState> states) {
    const border = UnderlineInputBorder(
      borderRadius: BorderRadius.zero,
      borderSide: BorderSide(width: 2.0, color: ColorConstants.ColorWhite_F7_bacgraunt),
    );

    for (final MapEntry(:key, :value) in _mapping.entries) {
      if (states.contains(key)) return border.copyWithBorderColor(value);
    }

    return border;
  }
}

extension _CopyWithBorderColor on UnderlineInputBorder {
  UnderlineInputBorder copyWithBorderColor(Color color) {
    return copyWith(
      borderSide: borderSide.copyWith(color: color),
    );
  }
}