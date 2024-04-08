import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../theme/figure_drawer_theme.dart';
import '../../figure_drawer/figure_drawer.dart';
import '../../figure_history/figure_history_button.dart';
import '../../point_magnet/point_magnet_button.dart';

@RoutePage()
class FigureDrawerScreen extends StatefulWidget {
  const FigureDrawerScreen({super.key});

  @override
  State<FigureDrawerScreen> createState() => _FigureDrawerScreenState();
}

class _FigureDrawerScreenState extends State<FigureDrawerScreen> {
  Offset offset = Offset.zero;
  final GlobalKey _widgetKey = GlobalKey<_FigureDrawerScreenState>();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(_getOffset);
  }

  void _getOffset(_) {
    final RenderBox? renderBox =
        _widgetKey.currentContext?.findRenderObject() as RenderBox?;
    offset = renderBox?.localToGlobal(Offset.zero) ?? Offset.zero;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = FigureDrawerTheme.of(context);
    final colors = theme.colors;
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shadowColor: colors.lightGrey,
        backgroundColor: colors.foregroundColor,
      ),
      backgroundColor: colors.backgroundColor,
      body: Stack(
        children: [
          FigureDrawer(
            position: offset,
            key: _widgetKey,
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 16, 0),
              child: PointMagnetButton(),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 17, 0, 0),
              child: FigureHistoryButton(),
            ),
          ),
        ],
      ),
    );
  }
}
