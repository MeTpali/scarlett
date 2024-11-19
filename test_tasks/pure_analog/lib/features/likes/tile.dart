import 'package:flutter/material.dart';
import 'package:topg/locale.dart';
import 'package:topg/topg.dart';

class LikesTile extends StatelessWidget {
  final int count;
  final bool isNew;
  final VoidCallback? onTap;
  const LikesTile({
    super.key,
    required this.count,
    this.isNew = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final topgTheme = TopGTheme.of(context);

    final leading = ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(40)),
      child: ColoredBox(
        color: topgTheme.mode == TopGMode.dark
            ? const Color(0xFF1F093A)
            : const Color.fromARGB(255, 203, 173, 240),
        child: const SizedBox(
          height: 60,
          width: 60,
          child: Icon(
            Icons.favorite,
            color: Color(0xFF7446AC),
          ),
        ),
      ),
    );
    Widget? action;

    if (isNew) {
      action = ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(2)),
        child: ColoredBox(
          color: topgTheme.mode == TopGMode.dark
              ? const Color(0xFFF6F4F4)
              : TopGColors.blackFogra,
          child: const SizedBox(
            height: 4,
            width: 4,
          ),
        ),
      );
    }
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Row(
          children: [
            leading,
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                S.of(context).localeFull == 'Русский'
                    ? '$count человека тебя лайкнули'
                    : '$count people have liked you',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            action ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
