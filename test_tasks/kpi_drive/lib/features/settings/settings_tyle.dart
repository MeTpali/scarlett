import 'package:flutter/material.dart';

class SettingsTyle extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback onTap;
  final bool lastInBlock;

  const SettingsTyle({
    required this.title,
    required this.icon,
    required this.onTap,
    this.trailing,
    this.lastInBlock = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final shape = lastInBlock
        ? const OutlineInputBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
            borderSide: BorderSide.none,
          )
        : null;
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: trailing,
      onTap: onTap,
      shape: shape,
    );
  }
}
