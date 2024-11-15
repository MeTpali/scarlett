import 'package:flutter/material.dart';
import 'package:pure_analog/utils/time.dart';
import 'package:topg/topg.dart';

import '../../models/message.dart';

class ChatTile extends StatelessWidget {
  final Widget? avatar;
  final bool? hasStory;
  final VoidCallback? onTap;
  final PureMessageModel lastMessage;
  const ChatTile({
    super.key,
    this.avatar,
    this.hasStory,
    this.onTap,
    required this.lastMessage,
  });

  @override
  Widget build(BuildContext context) {
    final topgTheme = TopGTheme.of(context);

    String subtitle = lastMessage.text;
    if (lastMessage.text.length > 25) {
      subtitle = '${subtitle.substring(0, 25)}...';
    }

    Widget leading = SizedBox(
      height: 60,
      width: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        clipBehavior: Clip.hardEdge,
        child: avatar,
      ),
    );

    if (hasStory ?? false) {
      leading = Container(
        height: 68,
        width: 68,
        decoration: BoxDecoration(
          border: Border.all(
            width: 4,
            color: const Color(0xFFF6F4F4),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(34)),
        ),
        child: leading,
      );
    }

    Widget? action;

    if (!lastMessage.isRead) {
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TimeUtils.messageTime(lastMessage.timestamp),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: topgTheme.mode == TopGMode.dark
                          ? const Color(0xFFF6F4F4)
                          : TopGColors.blackFogra,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: topgTheme.mode == TopGMode.dark
                          ? const Color(0xFFF6F4F4)
                          : TopGColors.blackFogra,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            action ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
