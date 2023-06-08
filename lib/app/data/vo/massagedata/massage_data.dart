import 'package:remote_bf/app/data/vo/blemodel/send_action.dart';
import 'package:remote_bf/res/svg_icon.dart';

import 'category.dart';
import 'massage.dart';

MassageCategory healthCare = MassageCategory(
  name: 'healthCare',
  svgIcon: healthCareIcon,
  isAutoMode: false,
  isAntiNoise: false,
  isManualMode: false,
  expanded: false,
  massageList: [
    gled,
    swellingEase,
    digest,
    larynxRelaxation,
    perineumMassage,
  ],
);

MassageCategory brainMassage = MassageCategory(
  name: "brain",
  svgIcon: brainIcon,
  isAutoMode: false,
  isAntiNoise: false,
  isManualMode: false,
  expanded: false,
  massageList: [
    imageMassage,
    concentration,
    wellBeing,
    relaxTraining,
    relaxBreath,
    goodMorning,
    goodNight
  ],
);

MassageCategory mentalMassage = MassageCategory(
  name: "mental",
  svgIcon: mentalIcon,
  isAutoMode: false,
  isAntiNoise: false,
  isManualMode: false,
  expanded: false,
  massageList: [
    heartConsolation,
    heartHope,
    selfEsteem,
    appreciate,
    forgiveness,
    trauma,
    love,
    passion
  ],
);

MassageCategory meditationMassage = MassageCategory(
  name: "명상마사지",
  svgIcon: meditationIcon,
  isAntiNoise: false,
  isAutoMode: false,
  isManualMode: false,
  expanded: false,
  massageList: [senseWakeup, senseRecognition, controlEmotion, accept],
);

MassageCategory antiNoising = MassageCategory(
  name: "안티노이징",
  svgIcon: meditationIcon,
  isAntiNoise: true,
  isAutoMode: false,
  isManualMode: false,
  expanded: false,
  massageList: [],
);

MassageCategory autoMode = MassageCategory(
  name: "autoMode",
  svgIcon: autoIcon,
  isAutoMode: true,
  isAntiNoise: false,
  isManualMode: false,
  expanded: false,
  massageList: [],
);

MassageCategory manualMode = MassageCategory(
  name: "manualMode",
  svgIcon: manualIcon,
  isAntiNoise: false,
  isAutoMode: false,
  isManualMode: true,
  expanded: false,
  bleManualPart: H10_KEY_LOCATE_FULL, //hyerim
  massageList: [
    jumurum,
    dudurim,
    handDudurim,
    combination,
    fingerPressure,
    swing,
    swingDudurim,
    // manualFootPre
  ],
);

MassageCategory manualModeAll = MassageCategory(
  name: "manualMode", //수동모드 전체
  svgIcon: manualIcon,
  isAntiNoise: false,
  isAutoMode: false,
  isManualMode: true,
  expanded: false,
  bleManualPart: H10_KEY_LOCATE_FULL,
  massageList: [
    jumurum,
    dudurim,
    handDudurim,
    combination,
    fingerPressure,
    swing,
    swingDudurim
  ],
);

MassageCategory manualShoulder = MassageCategory(
  name: "neckShoulder",
  svgIcon: manualIcon,
  isAntiNoise: false,
  isAutoMode: false,
  isManualMode: true,
  bleManualPart: H10_KEY_LOCATE_SHD,
  expanded: false,
  massageList: [
    jumurum,
    dudurim,
    handDudurim,
    combination,
    fingerPressure,
    swing,
    swingDudurim
  ],
);

MassageCategory manualBack = MassageCategory(
  name: "backSpine",
  svgIcon: manualIcon,
  isAntiNoise: false,
  isAutoMode: false,
  isManualMode: true,
  bleManualPart: H10_KEY_LOCATE_BACK,
  expanded: false,
  massageList: [
    jumurum,
    dudurim,
    handDudurim,
    combination,
    fingerPressure,
    swing,
    swingDudurim
  ],
);

MassageCategory manualHip = MassageCategory(
  name: "waistHeap",
  svgIcon: manualIcon,
  isAntiNoise: false,
  isAutoMode: false,
  isManualMode: true,
  bleManualPart: H10_KEY_LOCATE_WST,
  expanded: false,
  massageList: [
    jumurum,
    dudurim,
    handDudurim,
    combination,
    fingerPressure,
    swing,
    swingDudurim
  ],
);

MassageCategory manualFoot = MassageCategory(
  name: "manualFoot",
  svgIcon: manualIcon,
  isAntiNoise: false,
  isAutoMode: false,
  isManualMode: true,
  bleManualPart: H10_KEY_LEG_ALL_SPEED2,
  expanded: false,
  massageList: [
    jumurum,
    dudurim,
    handDudurim,
    combination,
    fingerPressure,
    swing,
    swingDudurim
  ],
);

MassageCategory manualPoint = MassageCategory(
  name: "manualPoint",
  svgIcon: manualIcon,
  isAntiNoise: false,
  isAutoMode: false,
  isManualMode: true,
  bleManualPart: H10_KEY_LOCATE_POINT,
  expanded: false,
  massageList: [
    jumurum,
    dudurim,
    handDudurim,
    combination,
    fingerPressure,
    swing,
    swingDudurim
  ],
);

List<MassageCategory> categoryList = [
  healthCare,
  brainMassage,
  autoModeAll,
  manualMode,
  mentalMassage,
];

MassageCategory autoModeAll = MassageCategory(
  name: "autoMode",
  svgIcon: autoIcon,
  isAutoMode: true,
  isAntiNoise: false,
  isManualMode: false,
  expanded: false,
  massageList: [
    neckShoulder,
    backSpine,
    waistHeap,
    lowerBody,
    lowerBodyStretching,
    spineStretching,
    slowStretching,
    airStretching,
    naturalSleep,
    miniNap,
    hammockSleep,
    nightLowNoise,
    ceo,
    senior,
    parentingMom,
    examineStudent,
    golf,
    pilates,
    yoga,
    driving,
  ],
);

MassageCategory autoModePart = MassageCategory(
  name: "autoModePart",
  svgIcon: icoAuto01Svg,
  isAutoMode: true,
  isAntiNoise: false,
  isManualMode: false,
  expanded: false,
  massageList: [
    neckShoulder,
    backSpine,
    waistHeap,
    lowerBody,
  ],
);

MassageCategory autoModeStretching = MassageCategory(
  name: "autoModeStretching",
  svgIcon: icoAuto05Svg,
  isAutoMode: true,
  isAntiNoise: false,
  isManualMode: false,
  expanded: false,
  massageList: [
    lowerBodyStretching,
    spineStretching,
    slowStretching,
    airStretching,
  ],
);

MassageCategory autoModeSleep = MassageCategory(
  name: "autoModeSleep",
  svgIcon: icoAuto09Svg,
  isAutoMode: true,
  isAntiNoise: false,
  isManualMode: false,
  expanded: false,
  massageList: [
    naturalSleep,
    miniNap,
    hammockSleep,
    nightLowNoise,
  ],
);

MassageCategory autoModeUser = MassageCategory(
  name: "autoModeUser",
  svgIcon: icoAuto14Svg,
  isAutoMode: true,
  isAntiNoise: false,
  isManualMode: false,
  expanded: false,
  massageList: [
    ceo,
    senior,
    parentingMom,
    examineStudent,
  ],
);

MassageCategory autoModeSport = MassageCategory(
  name: "autoModeSport",
  svgIcon: icoAuto14Svg,
  isAutoMode: true,
  isAntiNoise: false,
  isManualMode: false,
  expanded: false,
  massageList: [
    golf,
    pilates,
    yoga,
    driving,
  ],
);

List<MassageCategory> autoModeList = [
  autoModeAll,
  autoModePart,
  autoModeStretching,
  autoModeSleep,
  autoModeUser,
  autoModeSport
];

List<MassageCategory> manualModeList = [
  manualModeAll,
  manualShoulder,
  manualBack,
  manualHip,
  manualFoot,
  manualPoint
];
