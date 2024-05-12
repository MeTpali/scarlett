import 'package:flutter/material.dart';

import 'constants.dart';

enum TopGType {
  lightRegular,
  darkRegular,
  action,
  statistics,
  knowledge,
  surge,
  warning,
  disabled,
}

extension TopGTypeX on TopGType {
  Color resolveColor() {
    switch (this) {
      case TopGType.lightRegular:
        return TopGColors.yLightGrey;
      case TopGType.darkRegular:
        return TopGColors.yDarkGrey;
      case TopGType.action:
        return TopGColors.yYellow;
      case TopGType.statistics:
        return TopGColors.yBlue;
      case TopGType.knowledge:
        return TopGColors.yGreen;
      case TopGType.surge:
        return TopGColors.yViolet;
      case TopGType.warning:
        return TopGColors.yRed;
      case TopGType.disabled:
        return TopGColors.yMidGrey.withOpacity(0.5);
    }
  }
}
