import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../heroes/hero_model.dart';

part 'hero_picker_model.freezed.dart';

@freezed
class HeroPickerModel with _$HeroPickerModel {
  const factory HeroPickerModel({
    required SortType sortType,
    required List<HeroModel> heroes,
  }) = _HeroPickerModel;
}

enum SortType {
  alphAZ,
  alphZA,
  id,
}

extension SortTypeX on SortType {
  IconData resolveIcon() {
    switch (this) {
      case SortType.alphAZ:
        return FontAwesomeIcons.arrowDownAZ;
      case SortType.alphZA:
        return FontAwesomeIcons.arrowDownZA;
      case SortType.id:
        return FontAwesomeIcons.arrowDown;
    }
  }
}
