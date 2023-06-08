enum MassageProgram0107 {
  none,
  manualMode,
  gled,
  swellingEase,
  digest,
  larynxRelaxation,
  perineumMassage,
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
  imageMassage,
  concentration,
  wellBeing,
  relaxTraining,
  relaxBreath,
  goodMorning,
  goodNight,
  heartConsolation,
  heartHope,
  selfEsteem,
  appreciate,
  forgiveness,
  trauma,
  love,
  passion,
  jumurum
}

MassageProgramReturn0107(int value) {
  switch (value) {
    case 0:
      return MassageProgram0107.none;
      break;
    case 128: //gled
      return MassageProgram0107.gled;
      break;
    case 129: //헬스케어 부기완화
      return MassageProgram0107.swellingEase;
      // return "부기완화";
      break;
    case 130: //헬스케어 소화숙취해소
      return MassageProgram0107.digest;
      // return "숙취";
      break;
    case 131: //헬스케어 후두하근 이완
      return MassageProgram0107.larynxRelaxation;
      // return "후두하근 이완";
      break;
    case 134: //헬스케어 회음부마사지
      return MassageProgram0107.perineumMassage;
      // return "회음부 마사지";
      break;
    case 136:
      return MassageProgram0107.imageMassage;
      // return "심상";
      break;
    case 137:
      return MassageProgram0107.concentration;
      // return "집중력";
      break;
    case 138:
      return MassageProgram0107.wellBeing;
      // return "웰빙";
      break;
    case 139:
      return MassageProgram0107.relaxTraining;
      // return "이완훈련";
      break;
    case 140:
      return MassageProgram0107.relaxBreath;
      // return "호흡이완";
      break;
    case 141:
      return MassageProgram0107.goodMorning;
      // return "굿모닝";
      break;
    case 142:
      return MassageProgram0107.goodNight;
      // return "굿나잇";
      break;
    case 143: //자동모드 목어깨
      return MassageProgram0107.neckShoulder;
      // return "목/어깨";
      break;
    case 144: //자동모드 등척추
      return MassageProgram0107.backSpine;
      // return "등/척추";
      break;
    case 145: //자동모드 허리엉덩이
      return MassageProgram0107.waistHeap;
      // return "허리/엉덩이";
      break;
    case 146: //자동모드 하체
      return MassageProgram0107.lowerBody;
      // return "하체";
      break;
    case 147: //자동모드 요추
      return MassageProgram0107.lowerBodyStretching;
      // return "하체 스트레칭";
      break;
    case 148: //자동모드 척추
      return MassageProgram0107.spineStretching;
      // return "척추 스트레칭";
      break;
    case 149: //자동모드 슬로우
      return MassageProgram0107.slowStretching;
      // return "슬로우 스트레칭";
      break;
    case 150: //자동모드 스트레칭 에어
      return MassageProgram0107.airStretching;
      break;
    case 151: //자동모드 수면_자연수면
      return MassageProgram0107.naturalSleep;
      break;
    case 152: //자동모드 수면_미니수면
      return MassageProgram0107.miniNap;
      break;
    case 153: //자동모드 수면_파워낮잠
      return MassageProgram0107.hammockSleep;
      break;
    case 154: //자동모드 수면_해먹수면
      return MassageProgram0107.nightLowNoise;
      break;
    case 155: //자동모드 유저 ceo
      return MassageProgram0107.ceo;
      break;
    case 156: //자동모드 유저 시니어
      return MassageProgram0107.senior;
      break;
    case 157: //자동모드 유저 육아맘
      return MassageProgram0107.parentingMom;
      break;
    case 158: //자동모드 유저 수험생
      return MassageProgram0107.examineStudent;
      break;
    case 159: //자동모드 스포츠 골프
      return MassageProgram0107.golf;
      break;
    case 160: //자동모드 스포츠 필라테스
      return MassageProgram0107.pilates;
      break;
    case 161: //자동모드 스포츠 요가
      return MassageProgram0107.yoga;
      break;
    case 162: //자동모드 스포츠 드라이빙
      return MassageProgram0107.driving;
      break;
    case 163:
      return MassageProgram0107.heartConsolation;
      break;
    case 164:
      return MassageProgram0107.heartHope;
      break;
    case 165:
      return MassageProgram0107.selfEsteem;
      break;
    case 166:
      return MassageProgram0107.appreciate;
      break;
    case 167:
      return MassageProgram0107.forgiveness;
      break;
    case 168:
      return MassageProgram0107.trauma;
      break;
    case 169:
      return MassageProgram0107.love;
      break;
    case 170:
      return MassageProgram0107.passion;
      break;
    case 254: //수동모드
      return MassageProgram0107.manualMode;
      break;
  }
}

enum ManualMassageProgram {
  none,
  jumurum,
  dudurim,
  handDudurim,
  combination,
  fingerPressure,
  swing,
  swingDudurim
}

ManualMassageProgramReturn(int value) {
  switch (value) {
    case 0:
      return ManualMassageProgram.none;
      break;
    case 1:
      return ManualMassageProgram.jumurum;
      break;
    case 2:
      return ManualMassageProgram.dudurim;
      break;
    case 3:
      return ManualMassageProgram.combination;
      break;
    case 4:
      return ManualMassageProgram.handDudurim;
      break;
    case 5:
      return ManualMassageProgram.fingerPressure;
      break;
    case 7:
      return ManualMassageProgram.swing;
      break;
    case 9:
      return ManualMassageProgram.swingDudurim;
      break;
  }
}

enum ManualMassagePart {
  manualFoot,
  manualModeAll,
  manualShoulder,
  manualBack,
  manualHip,
  foot,
  manualPoint
}

ManualMassagePartReturn(int value) {
  switch (value) {
    case 0:
      return ManualMassagePart.manualFoot;
      break;
    case 1:
      return ManualMassagePart.manualModeAll;
      break;
    case 2:
      return ManualMassagePart.manualModeAll;
      break;
    case 3:
      return ManualMassagePart.manualPoint;
      break;
    case 4:
      return ManualMassagePart.manualShoulder;
      break;
    case 5:
      return ManualMassagePart.manualBack;
      break;
    case 6:
      return ManualMassagePart.manualHip;
      break;
  }
}

enum MusicMassageName {
  none,
  imageMassage,
  concentration,
  wellBeing,
  relaxTraining,
  relaxBreath,
  goodMorning,
  goodNight,
  heartConsolation,
  heartHope,
  selfEsteem,
  appreciate,
  forgiveness,
  trauma,
  love,
  passion
}

MusicMassageNameReturn(int value) {
  MusicMassageName name = MusicMassageName.none;
  switch (value) {
    case 0:
      name = MusicMassageName.none;
      break;
    case 1:
      name = MusicMassageName.imageMassage;
      break;
    case 2:
      name = MusicMassageName.concentration;
      break;
    case 3:
      name = MusicMassageName.wellBeing;
      break;
    case 4:
      name = MusicMassageName.relaxTraining;
      break;
    case 5:
      name = MusicMassageName.relaxBreath;
      break;
    case 6:
      name = MusicMassageName.goodMorning;
      break;
    case 7:
      name = MusicMassageName.goodNight;
      break;
    case 8:
      name = MusicMassageName.heartConsolation;
      break;
    case 9:
      name = MusicMassageName.heartHope;
      break;
    case 10:
      name = MusicMassageName.selfEsteem;
      break;
    case 11:
      name = MusicMassageName.appreciate;
      break;
    case 12:
      name = MusicMassageName.forgiveness;
      break;
    case 13:
      name = MusicMassageName.trauma;
      break;
    case 14:
      name = MusicMassageName.love;
      break;
    case 15:
      name = MusicMassageName.passion;
      break;
    case 52:
      name = MusicMassageName.relaxTraining;
      break;
    case 53:
      name = MusicMassageName.relaxBreath;
      break;
    case 54:
      name = MusicMassageName.goodMorning;
      break;
    case 55:
      name = MusicMassageName.goodNight;
      break;
    case 56:
      name = MusicMassageName.heartConsolation;
      break;
    case 57:
      name = MusicMassageName.heartHope;
      break;
    case 64:
      name = MusicMassageName.selfEsteem;
      break;
    case 65:
      name = MusicMassageName.appreciate;
      break;
    case 66:
      name = MusicMassageName.forgiveness;
      break;
    case 67:
      name = MusicMassageName.trauma;
      break;
    case 68:
      name = MusicMassageName.love;
      break;
    case 69:
      name = MusicMassageName.passion;
      break;
    case 100:
      name = MusicMassageName.relaxTraining;
      break;
    case 101:
      name = MusicMassageName.relaxBreath;
      break;
    case 102:
      name = MusicMassageName.goodMorning;
      break;
    case 103:
      name = MusicMassageName.goodNight;
      break;
    case 104:
      name = MusicMassageName.heartConsolation;
      break;
    case 105:
      name = MusicMassageName.heartHope;
      break;
    case 106:
      name = MusicMassageName.selfEsteem;
      break;
    case 107:
      name = MusicMassageName.appreciate;
      break;
    case 108:
      name = MusicMassageName.forgiveness;
      break;
    case 109:
      name = MusicMassageName.trauma;
      break;
    case 110:
      name = MusicMassageName.love;
      break;
    case 111:
      name = MusicMassageName.passion;
      break;
  }
  return name;
}

class Receive0107 {
  MassageProgram0107? saveMassage1;
  int? saveDuplicationIndex1;
  ManualMassageProgram? manualIndex1;
  ManualMassagePart? manualPart1;
  MassageProgram0107? saveMassage2;
  int? saveDuplicationIndex2;
  ManualMassageProgram? manualIndex2;
  ManualMassagePart? manualPart2;
  MassageProgram0107? saveMassage3;
  int? saveDuplicationIndex3;
  ManualMassageProgram? manualIndex3;
  ManualMassagePart? manualPart3;
  MassageProgram0107? saveMassage4;
  int? saveDuplicationIndex4;
  ManualMassageProgram? manualIndex4;
  ManualMassagePart? manualPart4;
  MassageProgram0107? saveMassage5;
  int? saveDuplicationIndex5;
  ManualMassageProgram? manualIndex5;
  ManualMassagePart? manualPart5;
  MassageProgram0107? saveMassage6;
  int? saveDuplicationIndex6;
  ManualMassageProgram? manualIndex6;
  ManualMassagePart? manualPart6;
  MassageProgram0107? saveMassage7;
  int? saveDuplicationIndex7;
  ManualMassageProgram? manualIndex7;
  ManualMassagePart? manualPart7;
  MassageProgram0107? saveMassage8;
  int? saveDuplicationIndex8;
  ManualMassageProgram? manualIndex8;
  ManualMassagePart? manualPart8;
  int? favoriteInclude;
  int? favoriteListIndex;
  MusicMassageName? voiceList;
  int? voiceIndex;
  int? wifiConnect;

  Receive0107(
      {this.saveMassage1,
      this.saveDuplicationIndex1,
      this.manualIndex1,
      this.manualPart1,
      this.saveMassage2,
      this.saveDuplicationIndex2,
      this.manualIndex2,
      this.manualPart2,
      this.saveMassage3,
      this.saveDuplicationIndex3,
      this.manualIndex3,
      this.manualPart3,
      this.saveMassage4,
      this.saveDuplicationIndex4,
      this.manualIndex4,
      this.manualPart4,
      this.saveMassage5,
      this.saveDuplicationIndex5,
      this.manualIndex5,
      this.manualPart5,
      this.saveMassage6,
      this.saveDuplicationIndex6,
      this.manualIndex6,
      this.manualPart6,
      this.saveMassage7,
      this.saveDuplicationIndex7,
      this.manualIndex7,
      this.manualPart7,
      this.saveMassage8,
      this.saveDuplicationIndex8,
      this.manualIndex8,
      this.manualPart8,
      this.favoriteInclude,
      this.favoriteListIndex,
      this.voiceList,
      this.voiceIndex});

  @override
  String toString() {
    // TODO: implement toString
    return 'Receive0107{saveMassage1 : $saveMassage1, saveDuplicationIndex1 : $saveDuplicationIndex1, manualIndex1 : $manualIndex1, manualPart1 : $manualPart1, saveMassage2 : $saveMassage2, saveDuplicationIndex2 : $saveDuplicationIndex2, manualIndex2 : $manualIndex2, manualPart2 : $manualPart2, saveMassage3 : $saveMassage3, saveDuplicationIndex3 : $saveDuplicationIndex3, manualIndex3 : $manualIndex3, manualPart3 : $manualPart3, saveMassage4 : $saveMassage4, saveDuplicationIndex4 : $saveDuplicationIndex4, manualIndex4 : $manualIndex4, manualPart4 : $manualPart4, saveMassage5 : $saveMassage5, saveDuplicationIndex5 : $saveDuplicationIndex5, manualIndex5 : $manualIndex5, manualPart5 : $manualPart5, saveMassage6 : $saveMassage6, saveDuplicationIndex6 : $saveDuplicationIndex6, manualIndex6 : $manualIndex6, manualPart6 : $manualPart6, saveMassage7 : $saveMassage7, saveDuplicationIndex7 : $saveDuplicationIndex7, manualIndex7 : $manualIndex7, manualPart7 : $manualPart7, saveMassage8 : $saveMassage8, saveDuplicationIndex8 : $saveDuplicationIndex8, manualIndex8 : $manualIndex8, manualPart8 : $manualPart8, favoriteInclude : $favoriteInclude, favoriteListIndex : $favoriteListIndex, voiceList : $voiceList, voiceIndex : $voiceIndex, wifiConnect : $wifiConnect}';
  }
}
