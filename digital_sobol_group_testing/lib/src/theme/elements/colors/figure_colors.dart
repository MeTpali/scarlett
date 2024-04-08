import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'figure_colors.freezed.dart';

@freezed
class FigureColors with _$FigureColors {
  const factory FigureColors({
    required Color foregroundColor,
    required Color backgroundColor,
    required Color lineColor,
    required Color detailColor,
    required Color mainBlue,
    required Color mainWhite,
    required Color lightBlue,
    required Color darkGrey,
    required Color midGrey,
    required Color lightGrey,
  }) = _FigureColors;

  const factory FigureColors.defaultValue({
    @Default(Color(0xFFF6F6F6)) Color foregroundColor,
    @Default(Color(0xFFE3E3E3)) Color backgroundColor,
    @Default(Color(0xFF000000)) Color lineColor,
    @Default(Color(0xFFFFFF9A)) Color detailColor,
    @Default(Color(0xFF0098EE)) Color mainBlue,
    @Default(Color(0xFFFDFDFD)) Color mainWhite,
    @Default(Color(0x770098EE)) Color lightBlue,
    @Default(Color(0xFF7D7D7D)) Color darkGrey,
    @Default(Color(0xFFA7A7A7)) Color midGrey,
    @Default(Color(0xFFC6C6C8)) Color lightGrey,
  }) = _DefaultFigureColors;
}
