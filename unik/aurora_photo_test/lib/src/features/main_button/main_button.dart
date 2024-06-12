import 'package:flutter/material.dart';

import '../../theme/constants/constants.dart';
import '../../theme/constants/types.dart';

class MainButton extends StatelessWidget {
  final Widget title;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;
  final TopGType type;
  final double height;
  final double width;
  const MainButton({
    required this.title,
    required this.onPressed,
    required this.type,
    this.onLongPress,
    this.height = 70,
    this.width = double.infinity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final foregroundColor =
        type == TopGType.disabled ? TopGColors.yMidGrey : Colors.black;
    final onPress = type == TopGType.disabled ? null : onPressed;
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPress,
        onLongPress: onLongPress,
        child: title,
        style: ButtonStyle(
          shadowColor: WidgetStateProperty.all(Colors.transparent),
          surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
          backgroundColor: WidgetStateProperty.all(type.resolveColor(context)),
          foregroundColor: WidgetStateProperty.all(foregroundColor),
          overlayColor: WidgetStateProperty.all(
            Color.lerp(type.resolveColor(context), Colors.white, 0.2),
          ),
        ),
      ),
    );
  }
}
