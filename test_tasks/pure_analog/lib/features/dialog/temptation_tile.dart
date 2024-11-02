import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_analog/resources/pure_icons.dart';

class TemptationTile extends StatelessWidget {
  final int count;
  final double height;
  final double width;
  final VoidCallback? onClose;
  final EdgeInsetsGeometry contextPadding;
  const TemptationTile({
    required this.count,
    this.height = 39,
    this.width = double.infinity,
    this.onClose,
    this.contextPadding = EdgeInsets.zero,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ColoredBox(
        color: const Color(0xFF7446AC),
        child: Padding(
          padding: contextPadding,
          child: Row(
            children: [
              SvgPicture.asset(
                PureIcons.rocket,
                height: 20,
                width: 20,
              ),
              Text(
                '$count общих соблазна',
                style: const TextStyle(
                  color: Color(0xFFF6F4F4),
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: onClose,
                icon: const Icon(
                  Icons.close_rounded,
                  color: Color(0xFFF6F4F4),
                  size: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
