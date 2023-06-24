import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';

class BFGraphy {
  const BFGraphy._init();

  static final BFTextTheme _bfTheme2023 = BFTextTheme();

  static init() {
    _bfTheme2023.init();
  }

  static BFTextTheme get bfText2023 => _bfTheme2023;
}

class BFTextTheme {
  late TextStyle title1;
  late TextStyle title2;
  late TextStyle title3;
  late TextStyle title4;
  late TextStyle body1;
  late TextStyle body2;
  late TextStyle detail1;
  late TextStyle detail2;

  init() {
    title1 = const TextStyle(
      debugLabel: 'bfText',
      fontFamily: '',
      fontSize: 26,
      fontWeight: FontWeight.w700,
      color: BFColor.white,
      textBaseline: TextBaseline.ideographic,
      leadingDistribution: TextLeadingDistribution.even,
    );
    title2 = const TextStyle(
      debugLabel: 'bfText',
      fontFamily: '',
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: BFColor.white,
      textBaseline: TextBaseline.ideographic,
      leadingDistribution: TextLeadingDistribution.even,
    );
    title3 = const TextStyle(
      debugLabel: 'bfText',
      fontFamily: '',
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: BFColor.white,
      textBaseline: TextBaseline.ideographic,
      leadingDistribution: TextLeadingDistribution.even,
    );
    title4 = const TextStyle(
      debugLabel: 'bfText',
      fontFamily: '',
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: BFColor.white,
      textBaseline: TextBaseline.ideographic,
      leadingDistribution: TextLeadingDistribution.even,
    );
    body1 = const TextStyle(
      debugLabel: 'bfText',
      fontFamily: '',
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: BFColor.white,
      textBaseline: TextBaseline.ideographic,
      leadingDistribution: TextLeadingDistribution.even,
    );
    body2 = const TextStyle(
      debugLabel: 'bfText',
      fontFamily: '',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: BFColor.white,
      textBaseline: TextBaseline.ideographic,
      leadingDistribution: TextLeadingDistribution.even,
    );
    detail1 = const TextStyle(
      debugLabel: 'bfText',
      fontFamily: '',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: BFColor.white,
      textBaseline: TextBaseline.ideographic,
      leadingDistribution: TextLeadingDistribution.even,
    );
    detail2 = const TextStyle(
      debugLabel: 'bfText',
      fontFamily: '',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: BFColor.white,
      textBaseline: TextBaseline.ideographic,
      leadingDistribution: TextLeadingDistribution.even,
    );
  }
}
