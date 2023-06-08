import 'package:flutter/material.dart';
import 'package:remote_bf/app/data/vo/massagedata/category.dart';
import 'package:remote_bf/res/bf_icon.dart';

List<MassageCategory> massageCategoryMock = <MassageCategory>[
  MassageCategory(
      name: '플랫모드',
      svgIcon: BFIcon.ic_plat_mode(size: Size(45, 45)),
      massageList: [],
      isAutoMode: false,
      isManualMode: false,
      isAntiNoise: false,
      expanded: false),
  MassageCategory(
      name: '헬스케어',
      svgIcon: BFIcon.ic_health_care(size: Size(45, 45)),
      massageList: [],
      isAutoMode: false,
      isManualMode: false,
      isAntiNoise: false,
      expanded: false),
  MassageCategory(
      name: '부위별 케어',
      svgIcon: BFIcon.ic_part_care(size: Size(45, 45)),
      massageList: [],
      isAutoMode: false,
      isManualMode: false,
      isAntiNoise: false,
      expanded: false),
  MassageCategory(
      name: '매일케어',
      svgIcon: BFIcon.ic_care(size: Size(45, 45), color: Colors.white),
      massageList: [],
      isAutoMode: false,
      isManualMode: false,
      isAntiNoise: false,
      expanded: false),
  MassageCategory(
      name: '멘탈케어',
      svgIcon: BFIcon.ic_mental_care(size: Size(45, 45)),
      massageList: [],
      isAutoMode: false,
      isManualMode: false,
      isAntiNoise: false,
      expanded: false),
  MassageCategory(
      name: '즐겨찾기',
      svgIcon: BFIcon.ic_favorite(size: Size(45, 45)),
      massageList: [],
      isAutoMode: false,
      isManualMode: false,
      isAntiNoise: false,
      expanded: false),
];
