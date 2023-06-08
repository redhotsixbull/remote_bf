class MassageRollingSpeed {
  String title;
  double max;
  int level;

  MassageRollingSpeed(
      {required this.title, required this.max, required this.level});
}

MassageRollingSpeed rollingSpeedUnderFoot = MassageRollingSpeed(
  title: "발바닥",
  max: 5,
  level: 2,
);

MassageRollingSpeed rollingSpeedUnderLeg = MassageRollingSpeed(
  title: "종아리",
  max: 5,
  level: 1,
);

class MassageAirPower {
  String title;
  double max;
  int level;

  MassageAirPower(
      {required this.title, required this.max, required this.level});
}

MassageAirPower airPowerAll = MassageAirPower(
  title: "전체",
  max: 10,
  level: 1,
);

MassageAirPower airPowerShd = MassageAirPower(
  title: "어깨",
  max: 10,
  level: 2,
);

MassageAirPower airPowerArm = MassageAirPower(
  title: "팔",
  max: 10,
  level: 3,
);

MassageAirPower airPowerBack = MassageAirPower(
  title: "등",
  max: 10,
  level: 4,
);

MassageAirPower airPowerHip = MassageAirPower(
  title: "골반",
  max: 10,
  level: 5,
);

MassageAirPower airPowerPeri = MassageAirPower(
  title: "회음부",
  max: 10,
  level: 6,
);

MassageAirPower airPowerThigh = MassageAirPower(
  title: "허벅지",
  max: 10,
  level: 7,
);

MassageAirPower airPowerLeg = MassageAirPower(
  title: "종아리",
  max: 10,
  level: 8,
);

MassageAirPower airPowerFoot = MassageAirPower(
  title: "발",
  max: 10,
  level: 9,
);

MassageAirPower airPowerHeel = MassageAirPower(
  title: "발등",
  max: 10,
  level: 10,
);

class MassageOption {
  String title;
  int level;

  MassageOption({required this.title, required this.level});
}

MassageOption massageSpeed = MassageOption(
  title: "speedText",
  level: 0,
);

MassageOption massageDuration = MassageOption(
  title: "speedText",
  level: 0,
);

MassageOption massageWidth = MassageOption(
  title: "widthText",
  level: 0,
);

MassageOption massageRange = MassageOption(
  title: "rangeText",
  level: 0,
);

MassageOption XDPower = MassageOption(
  title: "xdPowerText",
  level: 0,
);

MassageOption massageUpdownSpeed = MassageOption(
  title: "updownSpeed",
  level: 0,
);

MassageOption spinAngleLeft = MassageOption(
  title: "스핀각도(L)",
  level: 0,
);

MassageOption spinAngleRight = MassageOption(
  title: "스핀각도(R)",
  level: 0,
);

List<MassageOption> massageOptionList = [
  massageSpeed,
  // massageWidth,
  // massageRange,
  XDPower,
];

//수동안마인데 안마간격 옵션 제거
List<MassageOption> manualMassageOptionList = [
  massageSpeed,
  massageRange,
  XDPower,
  massageUpdownSpeed
];

//수동안마인데 안마간격 옵션 포함
List<MassageOption> manualWidthOptionList = [
  massageSpeed,
  massageWidth,
  massageRange,
  XDPower,
  massageUpdownSpeed
];

List<MassageAirPower> massageAirPowerList = [
  airPowerAll,
  airPowerShd,
  airPowerArm,
  airPowerBack,
  airPowerHip,
  airPowerPeri,
  airPowerThigh,
  airPowerLeg,
  airPowerFoot,
  airPowerHeel
];

List<MassageRollingSpeed> massageRollingSpeedList = [
  rollingSpeedUnderLeg,
  rollingSpeedUnderFoot
];
