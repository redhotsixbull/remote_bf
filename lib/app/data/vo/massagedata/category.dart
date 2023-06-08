import 'package:flutter/material.dart';
import 'package:remote_bf/app/data/vo/massagedata/massage.dart';

class MassageCategory {
  String name;
  Widget svgIcon;
  List<Massage> massageList = <Massage>[];
  int bleManualPart = 0;
  bool isAutoMode = false;
  bool isManualMode = false;
  bool isAntiNoise = false;
  bool expanded = false;

  MassageCategory(
      {required this.name,
      required this.svgIcon,
      required this.massageList,
      this.bleManualPart = 0,
      required this.isAutoMode,
      required this.isManualMode,
      required this.isAntiNoise,
      required this.expanded});
}
