import 'package:flutter/material.dart';
import 'package:remote_bf/app/data/vo/blemodel/send_action.dart';
import 'package:remote_bf/res/svg_icon.dart';

import 'music.dart';

class Massage {
  String name;
  Widget? svgIcon;
  bool hasMusic;
  List<Music> musicList;
  int? bleProtocol;
  int voiceList;

  Massage(
      {required this.name,
      this.svgIcon,
      required this.hasMusic,
      required this.musicList,
      this.bleProtocol,
      this.voiceList = -1});
}

//온열
Massage heat = Massage(
  name: "quickHeatText",
  svgIcon: null,
  musicList: [], //List<Music>(),
  bleProtocol: null,
  hasMusic: false,
);

//헬스케어
Massage gled = Massage(
  name: "GLED",
  svgIcon: icoHealthCare01Svg,
  musicList: [], //List<Music>(),
  bleProtocol: H10_KEY_PROG_AUTO_0,
  hasMusic: false,
);

Massage swellingEase = Massage(
  name: "lymphatic", //"부기완화",
  svgIcon: icoHealthCare02Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_1,
  hasMusic: false,
);

Massage digest = Massage(
  name: "digestive", //"숙취",
  svgIcon: icoHealthCare03Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_2,
  hasMusic: false,
);

Massage larynxRelaxation = Massage(
  name: "suboccipital", //"후두하근 이완",
  svgIcon: icoHealthCare04Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_3,
  hasMusic: false,
);

Massage comfortStomach = Massage(
  name: "편안한 장",
  svgIcon: icoHealthCare06Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_4,
  hasMusic: false,
);

Massage queen = Massage(
  name: "퀸즈",
  svgIcon: icoHealthCare07Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_5,
  hasMusic: false,
);

Massage burnoutSyndrome = Massage(
    name: "번아웃 신드롬",
    svgIcon: icoHealthCare08Svg,
    musicList: [],
    bleProtocol: H10_KEY_PROG_AUTO_7,
    hasMusic: true,
    voiceList: 20);

Massage perineumMassage = Massage(
  name: "perineal", //"회음부 마사지",
  svgIcon: icoHealthCare05Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_6,
  hasMusic: false,
);

//brainMassage
Massage imageMassage = Massage(
    name: "imagery", //"심상",
    svgIcon: icoBrain03Svg,
    musicList: [jirisan, moldib, jeju, island, venice],
    bleProtocol: H10_KEY_PROG_AUTO_8,
    hasMusic: true,
    voiceList: 1);

Massage concentration = Massage(
    name: "focus", //"집중력",
    svgIcon: icoBrain02Svg,
    musicList: [
      nightOfIrony,
      nightMusic,
      review,
      rainFall,
      colorFulAfterimage,
      lakeOfRomance,
      lucifer,
      morningGarden,
      hopeLight,
      underMoonLight,
      skyWind,
      handOverMessage,
      listenSea,
      willWell,
      birdsMusic
    ],
    bleProtocol: H10_KEY_PROG_AUTO_9,
    hasMusic: true,
    voiceList: 2);

Massage wellBeing = Massage(
    name: "wellbeing", //"웰빙",
    svgIcon: icoBrain07Svg,
    musicList: [
      generousMind,
      dreamBall,
      memory,
      afternoonRain,
      memoryGarden,
      lovePray,
      windSpring,
      inForest,
      starlightSea,
      fadedPictures,
      eveningSky,
      atSunset,
      theWayToTheStars,
      adore,
      dreamingTime
    ],
    bleProtocol: H10_KEY_PROG_AUTO_10,
    hasMusic: true,
    voiceList: 3);

Massage relaxTraining = Massage(
    name: "relaxtraining", //"이완훈련",
    svgIcon: icoBrain06Svg,
    musicList: [
      emperorTime,
      queensGarden,
      moonlightSong,
      symphonylight,
      seedOfHope,
    ],
    bleProtocol: H10_KEY_PROG_AUTO_11,
    hasMusic: true,
    voiceList: 4); //: 100);

Massage relaxBreath = Massage(
    name: "breath", //"호흡이완",
    svgIcon: icoBrain01Svg,
    musicList: [larkLake, cloudShape, forestOfPiano, deepPool, seaOfStar],
    bleProtocol: H10_KEY_PROG_AUTO_12,
    hasMusic: true,
    voiceList: 5); //: 101);

Massage goodMorning = Massage(
    name: "goodmorning", //"굿모닝",
    svgIcon: icoBrain04Svg,
    musicList: [
      goodMorningMusic,
      openDayMorning,
      goodFeelMorning,
      shiningDay,
      sunshineWindow
    ],
    bleProtocol: H10_KEY_PROG_AUTO_13,
    hasMusic: true,
    voiceList: 6); // : 102);

Massage goodNight = Massage(
    name: "goodnight", //"굿나잇",
    svgIcon: icoBrain05Svg,
    musicList: [memoryNight, todayNight, nightScenery, pieceMemory, picture],
    bleProtocol: H10_KEY_PROG_AUTO_14,
    hasMusic: true,
    voiceList: 7); //: 103);

//멘탈마사지
Massage heartConsolation = Massage(
    name: "console", //"마음위로",
    svgIcon: icoMental01Svg,
    musicList: [regretAtThatTime],
    bleProtocol: H10_KEY_PROG_AUTO_35,
    hasMusic: true,
    voiceList: 8); //: 104);

Massage heartHope = Massage(
    name: "hope", //"마음희망",
    svgIcon: icoMental02Svg,
    musicList: [wayHome],
    bleProtocol: H10_KEY_PROG_AUTO_36,
    hasMusic: true,
    voiceList: 9); // : 105);

Massage selfEsteem = Massage(
    name: "selfexteem", //"자존감",
    svgIcon: icoMental03Svg,
    musicList: [turtle],
    bleProtocol: H10_KEY_PROG_AUTO_37,
    hasMusic: true,
    voiceList: 10); // : 106);

Massage appreciate = Massage(
    name: "begrateful", //"감사",
    svgIcon: icoMental04Svg,
    musicList: [unchanged],
    bleProtocol: H10_KEY_PROG_AUTO_38,
    hasMusic: true,
    voiceList: 11); // : 107);

Massage forgiveness = Massage(
    name: "forgiveness", //"용서",
    svgIcon: icoMental05Svg,
    musicList: [timeToGoMe],
    bleProtocol: H10_KEY_PROG_AUTO_39,
    hasMusic: true,
    voiceList: 12); // : 108);

Massage trauma = Massage(
    name: "trauma", //"트라우마",
    svgIcon: icoMental06Svg,
    musicList: [timeThen],
    bleProtocol: H10_KEY_PROG_AUTO_40,
    hasMusic: true,
    voiceList: 13); // : 109);

Massage love = Massage(
    name: "love", //"사랑",
    svgIcon: icoMental07Svg,
    musicList: [loveSays],
    bleProtocol: H10_KEY_PROG_AUTO_41,
    hasMusic: true,
    voiceList: 14); // : 110);

Massage passion = Massage(
    name: "grit", //"열정",
    svgIcon: icoMental08Svg,
    musicList: [grit],
    bleProtocol: H10_KEY_PROG_AUTO_42,
    hasMusic: true,
    voiceList: 15); // : 111);

//명상마사지
Massage senseWakeup = Massage(
    name: "1단계",
    svgIcon: icoMeditation01Svg,
    musicList: [sensoryPerception, bodyScan, lookingBack, recognize, breath],
    bleProtocol: H10_KEY_PROG_AUTO_43,
    hasMusic: true);

Massage senseRecognition = Massage(
    name: "2단계",
    svgIcon: icoMeditation02Svg,
    musicList: [sensoryAcceptance, charity, lookingback2, recognize2, breath2],
    bleProtocol: H10_KEY_PROG_AUTO_44,
    hasMusic: true);

Massage controlEmotion = Massage(
    name: "3단계",
    svgIcon: icoMeditation03Svg,
    musicList: [deStress, sleep, solace, remorse, discernment],
    bleProtocol: H10_KEY_PROG_AUTO_45,
    hasMusic: true);

Massage accept = Massage(
    name: "4단계",
    svgIcon: icoMeditation04Svg,
    musicList: [acceptMusic, smile, mercy, equability, lookingBack4],
    bleProtocol: H10_KEY_PROG_AUTO_46,
    hasMusic: true);

//자동모드
Massage neckShoulder = Massage(
  name: "neckShoulder",
  svgIcon: icoAuto01Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_15,
  hasMusic: false,
);

Massage backSpine = Massage(
  name: "backSpine",
  svgIcon: icoAuto02Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_16,
  hasMusic: false,
);

Massage waistHeap = Massage(
  name: "waistHeap",
  svgIcon: icoAuto03Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_17,
  hasMusic: false,
);

Massage lowerBody = Massage(
  name: "lowerBody",
  svgIcon: icoAuto04Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_18,
  hasMusic: false,
);

Massage lowerBodyStretching = Massage(
  name: "lowerBodyStretching",
  svgIcon: icoAuto05Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_19,
  hasMusic: false,
);

Massage spineStretching = Massage(
  name: "spineStretching",
  svgIcon: icoAuto06Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_20,
  hasMusic: false,
);

Massage slowStretching = Massage(
  name: "slowStretching",
  svgIcon: icoAuto07Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_21,
  hasMusic: false,
);

Massage airStretching = Massage(
  name: "airStretching",
  svgIcon: icoAuto08Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_22,
  hasMusic: false,
);

Massage naturalSleep = Massage(
  name: "naturalSleep",
  svgIcon: icoAuto09Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_23,
  hasMusic: false,
);

Massage miniNap = Massage(
  name: "miniNap",
  svgIcon: icoAuto10Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_24,
  hasMusic: false,
);

Massage hammockSleep = Massage(
    name: "hammockSleep",
    svgIcon: icoAuto11Svg,
    musicList: [],
    bleProtocol: H10_KEY_PROG_AUTO_25,
    hasMusic: true,
    voiceList: 21);

Massage nightLowNoise = Massage(
  name: "nightLowNoise",
  svgIcon: icoAuto12Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_26,
  hasMusic: false,
);

Massage ceo = Massage(
  name: "ceo",
  svgIcon: icoAuto13Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_27,
  hasMusic: false,
);

Massage senior = Massage(
  name: "senior",
  svgIcon: icoAuto14Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_28,
  hasMusic: false,
);

Massage parentingMom = Massage(
  name: "parentingMom",
  svgIcon: icoAuto15Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_29,
  hasMusic: false,
);

Massage examineStudent = Massage(
    name: "examineStudent",
    svgIcon: icoAuto16Svg,
    musicList: [],
    bleProtocol: H10_KEY_PROG_AUTO_30,
    hasMusic: false);

Massage golf = Massage(
    name: "golf",
    svgIcon: icoAuto17Svg,
    musicList: [],
    bleProtocol: H10_KEY_PROG_AUTO_31,
    hasMusic: false);

Massage pilates = Massage(
  name: "pilates",
  svgIcon: icoAuto18Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_32,
  hasMusic: false,
);

Massage yoga = Massage(
  name: "yoga",
  svgIcon: icoAuto19Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_33,
  hasMusic: false,
);

Massage driving = Massage(
  name: "driving",
  svgIcon: icoAuto20Svg,
  musicList: [],
  bleProtocol: H10_KEY_PROG_AUTO_34,
  hasMusic: false,
);
//수동
Massage handDudurim = Massage(
    name: "handDudurim",
    svgIcon: icoManual04Svg,
    musicList: [],
    bleProtocol: H10_KEY_SKNOCK,
    hasMusic: false);

Massage jumurum = Massage(
    name: "jumurum",
    svgIcon: icoManual02Svg,
    musicList: [],
    bleProtocol: H10_KEY_CKNEAD,
    hasMusic: false);

Massage fingerPressure = Massage(
    name: "fingerPressure",
    svgIcon: icoManual01Svg,
    musicList: [],
    bleProtocol: H10_KEY_PRESS,
    hasMusic: false);

Massage combination = Massage(
    name: "combination",
    svgIcon: icoManual05Svg,
    musicList: [],
    bleProtocol: H10_KEY_WAVELET,
    hasMusic: false);

Massage dudurim = Massage(
    name: "dudurim",
    svgIcon: icoManual03Svg,
    musicList: [],
    bleProtocol: H10_KEY_KNOCK,
    hasMusic: false);

Massage swing = Massage(
    name: "swing",
    svgIcon: icoManual07Svg,
    musicList: [],
    bleProtocol: H10_KEY_RB,
    hasMusic: false);

Massage swingDudurim = Massage(
    name: "swingDudurim",
    svgIcon: icoManual08Svg,
    musicList: [],
    bleProtocol: H10_KEY_RB_KNC,
    hasMusic: false);

Massage manualFootPre = Massage(
    name: "종아리/발바닥",
    svgIcon: icoManual01Svg,
    musicList: [],
    bleProtocol: H10_KEY_LOCATE_LEG,
    hasMusic: false);
