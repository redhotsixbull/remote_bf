enum Power { on, off }

powerReturn(int value) {
  switch (value) {
    case 0:
      return Power.off;

    case 1:
      return Power.on;
  }
}

enum MassageType {
  stop,
  jumurum,
  dudurim,
  jumuluc,
  hitting,
  acupressure,
  rhythm,
  rubbing,
  acupressure3D,
  swingRubbing
}

massageTypeReturn(int value) {
  switch (value) {
    case 0:
      return MassageType.stop;

    case 1:
      return MassageType.jumurum;

    case 2:
      return MassageType.dudurim;

    case 3:
      return MassageType.jumuluc;

    case 4:
      return MassageType.hitting;

    case 5:
      return MassageType.acupressure;

    case 6:
      return MassageType.rhythm;

    case 7:
      return MassageType.rubbing;

    case 8:
      return MassageType.acupressure3D;

    case 9:
      return MassageType.swingRubbing;
  }
}

enum SupportLegMove { support, unSupport }

supportLegMoveReturn(int value) {
  switch (value) {
    case 0:
      return SupportLegMove.support;

    case 1:
      return SupportLegMove.unSupport;
  }
}

enum Support3D { support, unSupport }

support3DReturn(int value) {
  switch (value) {
    case 0:
      return Support3D.support;

    case 1:
      return Support3D.unSupport;
  }
}

enum AutoKnee { on, off }

autoKneeReturn(int value) {
  switch (value) {
    case 0:
      return AutoKnee.on;

    case 1:
      return AutoKnee.off;
  }
}

enum FootRoller { on, off }

footRollerReturn(int value) {
  switch (value) {
    case 0:
      return FootRoller.on;

    case 1:
      return FootRoller.off;
  }
}

enum MassageWidth { unknown, small, mid, width }

massageWidthReturn(int value) {
  switch (value) {
    case 0:
      return MassageWidth.unknown;

    case 1:
      return MassageWidth.small;

    case 2:
      return MassageWidth.mid;

    case 3:
      return MassageWidth.width;
  }
}

enum NIonSwitch { on, off }

nIonSwitchReturn(int value) {
  switch (value) {
    case 0:
      return NIonSwitch.on;

    case 1:
      return NIonSwitch.off;
  }
}

enum MassagePart { none, full, part, point, shd, back, wst, hip }

massagePartReturn(int value) {
  switch (value) {
    case 0:
      return MassagePart.none;

    case 1:
      return MassagePart.full;

    case 2:
      return MassagePart.wst;

    case 3:
      return MassagePart.point;

    case 4:
      return MassagePart.shd;

    case 5:
      return MassagePart.back;

    case 6:
      return MassagePart.wst;

    case 9:
      return MassagePart.point;
  }
}

enum AirBagArmState { none, activate }

airBagArmStateReturn(int value) {
  switch (value) {
    case 0:
      return AirBagArmState.none;

    case 1:
      return AirBagArmState.activate;
  }
}

enum AirBagHeapState { none, activate }

airBagHeapStateReturn(int value) {
  switch (value) {
    case 0:
      return AirBagHeapState.none;

    case 1:
      return AirBagHeapState.activate;
  }
}

enum AirBagThighState { none, activate }

airBagThighStateReturn(int value) {
  switch (value) {
    case 0:
      return AirBagThighState.none;

    case 1:
      return AirBagThighState.activate;
  }
}

enum AirBagCalfState { none, activate }

airBagCalfStateReturn(int value) {
  switch (value) {
    case 0:
      return AirBagCalfState.none;

    case 1:
      return AirBagCalfState.activate;
  }
}

enum AirBagFootState { none, activate }

airBagFootStateReturn(int value) {
  switch (value) {
    case 0:
      return AirBagFootState.none;

    case 1:
      return AirBagFootState.activate;
  }
}

enum AirBagNeckState { none, activate }

airBagNeckStateReturn(int value) {
  switch (value) {
    case 0:
      return AirBagNeckState.none;

    case 1:
      return AirBagNeckState.activate;
  }
}

enum AirBagBackState { none, activate }

airBagBackStateReturn(int value) {
  switch (value) {
    case 0:
      return AirBagBackState.none;

    case 1:
      return AirBagBackState.activate;
  }
}

enum AirBagShoulderState { none, activate }

airBagShoulderStateReturn(int value) {
  switch (value) {
    case 0:
      return AirBagShoulderState.none;

    case 1:
      return AirBagShoulderState.activate;
  }
}

enum ChairState {
  stop,
  reset,
  waiting,
  normal,
  engineering,
  sleep,
  pause,
  motorError
}

chairStateReturn(int value) {
  switch (value) {
    case 0:
      return ChairState.stop; //제자리 이동 후 멈춤

    case 1:
      return ChairState.reset; //의자 제자리 이동중

    case 2:
      return ChairState.waiting; //의자 신호대기

    case 3:
      return ChairState.normal; //의자 움직임

    // case 4:
    //   return ChairState.pause;
    //
    case 5:
      return ChairState.motorError; //모터 과부하

    case 6:
      return ChairState.engineering;
    case 7:
      return ChairState.sleep;
  }
}

enum BodyMeasurement { runMassageProgram, Measurement }

bodyMeasurementReturn(int value) {
  switch (value) {
    case 0:
      return BodyMeasurement.runMassageProgram;

    case 1:
      return BodyMeasurement.Measurement;
  }
}

enum AdjustShoulderLocate { possible, impossible }

adjustShoulderLocateReturn(int value) {
  switch (value) {
    case 0:
      return AdjustShoulderLocate.possible;

    case 1:
      return AdjustShoulderLocate.impossible;
  }
}

enum BodyMeasurementResult { fail, success }

bodyMeasurementResultReturn(int value) {
  switch (value) {
    case 0:
      return BodyMeasurementResult.fail;

    case 1:
      return BodyMeasurementResult.success;
  }
}

enum MotorZeroOrSlidingMotor { stop, slidingForward, slidingBackward }

motorZeroOrSlidingMotorReturn(int value) {
  switch (value) {
    case 0:
      return MotorZeroOrSlidingMotor.stop;

    case 1:
      return MotorZeroOrSlidingMotor.slidingForward;

    case 2:
      return MotorZeroOrSlidingMotor.slidingBackward;
  }
}

enum MotorLegAngle { stop, angleUp, angleDown }

motorLegAngleReturn(int value) {
  switch (value) {
    case 0:
      return MotorLegAngle.stop;

    case 1:
      return MotorLegAngle.angleUp;

    case 2:
      return MotorLegAngle.angleDown;
  }
}

enum MotorBackState { stop, angleUp, angleDown }

motorBackAngleReturn(int value) {
  switch (value) {
    case 0:
      return MotorBackState.stop;

    case 1:
      return MotorBackState.angleUp;

    case 2:
      return MotorBackState.angleDown;
  }
}

enum ModeBuzzer { silent, shortInterval, longInterval, shearing }

modeBuzzerReturn(int value) {
  switch (value) {
    case 0:
      return ModeBuzzer.silent;

    case 1:
      return ModeBuzzer.shortInterval;

    case 2:
      return ModeBuzzer.longInterval;

    case 3:
      return ModeBuzzer.shearing;
  }
}

enum SwitchMusic { on, off }

switchMusicReturn(int value) {
  switch (value) {
    case 0:
      return SwitchMusic.on;

    case 1:
      return SwitchMusic.off;
  }
}

enum ModeOperation { commercial, home }

modeOperationReturn(int value) {
  switch (value) {
    case 0:
      return ModeOperation.commercial;

    case 1:
      return ModeOperation.home;
  }
}

enum ProgramTime { none, temMinute, twentyMinute, thirtyMinute }

programTimeReturn(int value) {
  switch (value) {
    case 0:
      return ProgramTime.none;

    case 1:
      return ProgramTime.temMinute;

    case 2:
      return ProgramTime.twentyMinute;

    case 3:
      return ProgramTime.thirtyMinute;
  }
}

enum MassageProgram {
  manualMode,
  gled,
  swellingEase,
  digest,
  larynxRelaxation,
  // comfortStomach,
  // queen,
  // burnoutSyndrome,
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
}

massageProgramReturn(int value) {
  switch (value) {
    case 0:
      return MassageProgram.manualMode;

    // case 1:
    //   return MassageProgram.neck;
    //
    // case 2:
    //   return MassageProgram.neck;
    //
    case 128: //헬스케어 gled
      return MassageProgram.gled;

    case 129: //헬스케어 부기완화
      return MassageProgram.swellingEase;

    case 130: //헬스케어 소화숙취해소
      return MassageProgram.digest;

    case 131: //헬스케어 후두하근 이완
      return MassageProgram.larynxRelaxation;

    // case 132: //헬스케어 편안한 장
    //   return MassageProgram.comfortStomach;
    //
    // case 133: //헬스케어 퀸즈
    //   return MassageProgram.queen;
    //
    case 134: //헬스케어 회음부마사지
      return MassageProgram.perineumMassage;

    // case 135: //헬스케어 번아웃
    //   return MassageProgram.burnoutSyndrome;
    //
    case 136:
      return MassageProgram.imageMassage;

    case 137:
      return MassageProgram.concentration;

    case 138:
      return MassageProgram.wellBeing;

    case 139:
      return MassageProgram.relaxTraining;

    case 140:
      return MassageProgram.relaxBreath;

    case 141:
      return MassageProgram.goodMorning;

    case 142:
      return MassageProgram.goodNight;

    case 143: //자동모드 목어깨
      return MassageProgram.neckShoulder;

    case 144: //자동모드 등척추
      return MassageProgram.backSpine;

    case 145: //자동모드 허리엉덩이
      return MassageProgram.waistHeap;

    case 146: //자동모드 하체
      return MassageProgram.lowerBody;

    case 147: //자동모드 요추
      return MassageProgram.lowerBodyStretching;

    case 148: //자동모드 척추
      return MassageProgram.spineStretching;

    case 149: //자동모드 슬로우
      return MassageProgram.slowStretching;

    case 150: //자동모드 스트레칭 에어
      return MassageProgram.airStretching;

    case 151: //자동모드 수면_자연수면
      return MassageProgram.naturalSleep;

    case 152: //자동모드 수면_미니수면
      return MassageProgram.miniNap;

    case 153: //자동모드 수면_파워낮잠
      return MassageProgram.hammockSleep;

    case 154: //자동모드 수면_해먹수면
      return MassageProgram.nightLowNoise;

    case 155: //자동모드 유저 ceo
      return MassageProgram.ceo;

    case 156: //자동모드 유저 시니어
      return MassageProgram.senior;

    case 157: //자동모드 유저 육아맘
      return MassageProgram.parentingMom;

    case 158: //자동모드 유저 수험생
      return MassageProgram.examineStudent;

    case 159: //자동모드 스포츠 골프
      return MassageProgram.golf;

    case 160: //자동모드 스포츠 필라테스
      return MassageProgram.pilates;

    case 161: //자동모드 스포츠 요가
      return MassageProgram.yoga;

    case 162: //자동모드 스포츠 드라이빙
      return MassageProgram.driving;

    case 163:
      return MassageProgram.heartConsolation;

    case 164:
      return MassageProgram.heartHope;

    case 165:
      return MassageProgram.selfEsteem;

    case 166:
      return MassageProgram.appreciate;

    case 167:
      return MassageProgram.forgiveness;

    case 168:
      return MassageProgram.trauma;

    case 169:
      return MassageProgram.love;

    case 170:
      return MassageProgram.passion;

    case 254:
      return MassageProgram.manualMode;
  }
}

enum EthernetState { disconnect, connect }

ethernetStateReturn(int value) {
  switch (value) {
    case 0:
      return EthernetState.disconnect;

    case 1:
      return EthernetState.connect;
  }
}

enum TabletState { stop, activate }

tabletStateReturn(int value) {
  switch (value) {
    case 0:
      return TabletState.stop;

    case 1:
      return TabletState.activate;
  }
}

enum CalfRollerState { stop, activate }

calfRollerStateReturn(int value) {
  switch (value) {
    case 0:
      return CalfRollerState.stop;

    case 1:
      return CalfRollerState.activate;
  }
}

enum LedState { disabled, activate }

ledStateReturn(int value) {
  switch (value) {
    case 0:
      return LedState.disabled;

    case 1:
      return LedState.activate;
  }
}

enum Language { english, korean, chinese }

languageReturn(int value) {
  switch (value) {
    case 0:
      return Language.english;

    case 1:
      return Language.chinese;

    case 7:
      return Language.korean;
  }
}

enum WifiState { disconnect, connect }

wifiStateReturn(int value) {
  switch (value) {
    case 0:
      return WifiState.disconnect;

    case 1:
      return WifiState.connect;
  }
}

enum SeatState { exist, absence }

seatStateReturn(int value) {
  switch (value) {
    case 0:
      return SeatState.exist;

    case 1:
      return SeatState.absence;
  }
}

enum PauseState { pause, run }

pauseStateReturn(int value) {
  switch (value) {
    case 0:
      return PauseState.run;

    case 1:
      return PauseState.pause;
  }
}

enum WifiStrength { noSignal, stepOne, stepTwo, stepThree, stepFour }

wifiStrengthReturn(int value) {
  switch (value) {
    case 0:
      return WifiStrength.noSignal;

    case 1:
      return WifiStrength.stepOne;

    case 2:
      return WifiStrength.stepTwo;

    case 3:
      return WifiStrength.stepThree;

    case 4:
      return WifiStrength.stepFour;
  }
}

enum WifiStateConn { failConnect, activate, error001, error002 }

wifiStateConnReturn(int value) {
  switch (value) {
    case 0:
      return WifiStateConn.failConnect;

    case 1:
      return WifiStateConn.activate;

    case 2:
      return WifiStateConn.error001;

    case 3:
      return WifiStateConn.error002;
  }
}

enum TmallSwitch { stop, activate }

tmallSwitchReturn(int value) {
  switch (value) {
    case 0:
      return TmallSwitch.stop;

    case 1:
      return TmallSwitch.activate;
  }
}

enum FootRollerWay { stop, rotateClockwise, rotateUnClockWise, goBackRepeat }

footRollerWayReturn(int value) {
  switch (value) {
    case 0:
      return FootRollerWay.stop;

    case 1:
      return FootRollerWay.rotateClockwise;

    case 2:
      return FootRollerWay.rotateUnClockWise;

    case 3:
      return FootRollerWay.goBackRepeat;
  }
}

enum LegState { stop, stretching, shrink }

legStateReturn(int value) {
  switch (value) {
    case 0:
      return LegState.stop;

    case 1:
      return LegState.stretching;

    case 2:
      return LegState.shrink;
  }
}

enum CalfState { stop, stretching, shrink }

calfStateReturn(int value) {
  switch (value) {
    case 0:
      return CalfState.stop;

    case 1:
      return CalfState.stretching;

    case 2:
      return CalfState.shrink;
  }
}

enum KnockState { stop, activate }

knockStateReturn(int value) {
  switch (value) {
    case 0:
      return KnockState.stop;

    case 1:
      return KnockState.activate;
  }
}

enum MassageModuleMove { stop, up, down }

massageModuleMoveReturn(int value) {
  switch (value) {
    case 0:
      return MassageModuleMove.stop;

    case 1:
      return MassageModuleMove.up;

    case 2:
      return MassageModuleMove.down;
  }
}

enum ZeroStrength { normal, stepOne, stepTwo, stepThree }

zeroStrengthReturn(int value) {
  switch (value) {
    case 0:
      return ZeroStrength.normal;

    case 1:
      return ZeroStrength.stepOne;

    case 2:
      return ZeroStrength.stepTwo;

    case 3:
      return ZeroStrength.stepThree;
  }
}

enum KneadWay { stop, rotateClockwise, rotateUnClockwise }

kneadWayReturn(int value) {
  switch (value) {
    case 0:
      return KneadWay.stop;

    case 1:
      return KneadWay.rotateClockwise;

    case 2:
      return KneadWay.rotateUnClockwise;
  }
}

enum BuzzerSwitch { able, disabled }

buzzerSwitchReturn(int value) {
  switch (value) {
    case 0:
      return BuzzerSwitch.able;

    case 1:
      return BuzzerSwitch.disabled;
  }
}

enum Tapping { able, disabled }

tappingReturn(int value) {
  switch (value) {
    case 0:
      return Tapping.able;

    case 1:
      return Tapping.disabled;
  }
}

enum SealSwitch { able, disabled }

sealSwitchReturn(int value) {
  switch (value) {
    case 0:
      return SealSwitch.able;

    case 1:
      return SealSwitch.disabled;
  }
}

enum SwingSwitch { able, disabled }

swingSwitchReturn(int value) {
  switch (value) {
    case 0:
      return SwingSwitch.able;

    case 1:
      return SwingSwitch.disabled;
  }
}

enum ShoulderIcon { able, disabled }

shoulderIconReturn(int value) {
  switch (value) {
    case 0:
      return ShoulderIcon.able;

    case 1:
      return ShoulderIcon.disabled;
  }
}

enum ErrorState { normal, error }

errorStateReturn(int value) {
  switch (value) {
    case 0:
      return ErrorState.normal;

    case 1:
      return ErrorState.error;
  }
}

class ReceiveErrorState {
  ErrorState? errRemoteOne;
  ErrorState? errArm;
  ErrorState? legAngle;
  ErrorState? errLeg;
  ErrorState? errUpDownMove;
  ErrorState? errKnock;
  ErrorState? errCalfKnead;
  ErrorState? errCalfHeater;
  ErrorState? errBackHeater;
  ErrorState? errRemoteTwo;
  ErrorState? errCalfOne;
  ErrorState? errCalfTwo;
  ErrorState? airBag;
  ErrorState? errMainBoard;
  ErrorState? electronic;
  ErrorState? err3DMotor;
  ErrorState? errLegLength;
  ErrorState? errSubBoard;
  ErrorState? errCalfRoller;
  ErrorState? errFootRoller;
  ErrorState? errHeadHolderStricture;
  ErrorState? errElectronicStricture;
  ErrorState? errUpLowLegStricture;
  ErrorState? errCalfStricture;
  ErrorState? errUpDownMassageModule;

  ReceiveErrorState(
      {this.errRemoteOne,
      this.errArm,
      this.legAngle,
      this.errLeg,
      this.errUpDownMove,
      this.errKnock,
      this.errCalfKnead,
      this.errCalfHeater,
      this.errBackHeater,
      this.errRemoteTwo,
      this.errCalfOne,
      this.errCalfTwo,
      this.airBag,
      this.errMainBoard,
      this.electronic,
      this.err3DMotor,
      this.errLegLength,
      this.errSubBoard,
      this.errCalfRoller,
      this.errFootRoller,
      this.errHeadHolderStricture,
      this.errElectronicStricture,
      this.errUpLowLegStricture,
      this.errCalfStricture,
      this.errUpDownMassageModule});
}

class Receive0104 {
  Power? power;
  MassageType? massageType;
  SupportLegMove? supportLegMove;
  Support3D? support3d;
  AutoKnee? autoKnee;
  FootRoller? footRoller;
  int? manualMassageSpeed;
  MassageWidth? massageWidth;
  NIonSwitch? nIonSwitch;
  int? backHeatPower;
  int? airPower;
  MassagePart? massagePart;
  int? remainTimeOne;
  int? remainTimeTwo;
  // FootRollerSpeed footRollerSpeed;
  int? footRollerSpeed;
  AirBagArmState? airBagArmState;
  AirBagThighState? airBagThighState;
  AirBagHeapState? airBagHeapState;
  AirBagCalfState? airBagCalfState;
  AirBagFootState? airBagFootState;
  AirBagNeckState? airBagNeckState;
  AirBagBackState? airBagBackState;
  AirBagShoulderState? airBagShoulderState;
  ChairState? chairState;
  int? calfHeatPower;
  int? locationMassageBall;
  int? shdAdjEnter;
  BodyMeasurement? bodyMeasurement;
  AdjustShoulderLocate? adjustShoulderLocate;
  BodyMeasurementResult? bodyMeasurementResult;
  int? locationBodyMeasurement;
  int? autoMoveKnee;
  MotorZeroOrSlidingMotor? motorZeroOrSlidingMotor;
  MotorLegAngle? motorLegAngle;
  MotorBackState? motorBackState;
  KneadWay? kneadWay;

  ModeBuzzer? modeBuzzer;
  SwitchMusic? switchMusic;
  int? volume;
  int? wholeAirBag;
  ModeOperation? modeOperation;
  ProgramTime? programTime;
  MassageProgram? massageProgram;
  EthernetState? ethernetState;
  TabletState? tabletState;
  CalfRollerState? calfRollerState;
  int? calfRollerSpeed;
  int? locationCalfRoller;
  LedState? ledState;
  Language? language;
  WifiState? wifiState;
  WifiStateConn? wifiStateConn;
  int? xdPower;
  SeatState? seatState;
  PauseState? pauseState;
  WifiStrength? wifiStrength;
  TmallSwitch? tmallSwitch;
  FootRollerWay? footRollerWay;
  LegState? legState;
  CalfState? calfState;

  KnockState? knockState;
  MassageModuleMove? massageModuleMove;
  ZeroStrength? zeroStrength;
  BuzzerSwitch? buzzerSwitch;
  Tapping? tapping;
  SwingSwitch? swingSwitch;
  SealSwitch? sealSwitch;
  ShoulderIcon? shoulderIcon;
  int? msShdStrength;
  int? msBackStrength;
  int? msWstStrength;
  int? footRIStrength;
  int? legFootRlStrength;

  int? coreHeatLevel;
  int? footHeatLevel;
  int? setWifi;

  int? airThighStrength;
  int? airPeriStrength;
  int? airHeelStrength;
  int? airFootStrength;
  int? airLegStrength;
  int? airHipStrength;
  int? airWstStrength;
  int? airArmStrength;
  int? airShdStrength;

  int? walkSpeed;

  int? zeroStrengthNum;
  int? programTimeNum;

  int? errorFHSleg;
  int? errorFJSMain;

  int? voiceVolume;
  int? resetSW;
  int? handLedSW;
  int? walkPercent;
  int? legKneadSpeed;

  MassagePart? massageRange;

  ReceiveErrorState? receiveErrorState;

  Receive0104(
      {this.power,
      this.massageType,
      this.supportLegMove,
      this.support3d,
      this.autoKnee,
      this.footRoller,
      this.manualMassageSpeed,
      this.massageWidth,
      this.nIonSwitch,
      this.backHeatPower,
      this.coreHeatLevel,
      this.footHeatLevel,
      this.setWifi,
      this.airPower,
      this.massagePart,
      this.remainTimeOne,
      this.remainTimeTwo,
      this.footRollerSpeed,
      this.airBagArmState,
      this.airBagThighState,
      this.airBagHeapState,
      this.airBagCalfState,
      this.airBagFootState,
      this.airBagNeckState,
      this.airBagBackState,
      this.airBagShoulderState,
      this.chairState,
      this.calfHeatPower,
      this.locationMassageBall,
      this.shdAdjEnter,
      this.bodyMeasurement,
      this.adjustShoulderLocate,
      this.bodyMeasurementResult,
      this.locationBodyMeasurement,
      this.autoMoveKnee,
      this.motorZeroOrSlidingMotor,
      this.motorLegAngle,
      this.motorBackState,
      this.kneadWay,
      this.modeBuzzer,
      this.switchMusic,
      this.volume,
      this.wholeAirBag,
      this.modeOperation,
      this.programTime,
      this.programTimeNum,
      this.massageProgram,
      this.ethernetState,
      this.tabletState,
      this.calfRollerState,
      this.calfRollerSpeed,
      this.locationCalfRoller,
      this.ledState,
      this.language,
      this.wifiState,
      this.wifiStateConn,
      this.xdPower,
      this.seatState,
      this.pauseState,
      this.wifiStrength,
      this.tmallSwitch,
      this.footRollerWay,
      this.legState,
      this.calfState,
      this.knockState,
      this.massageModuleMove,
      this.zeroStrength,
      this.zeroStrengthNum,
      this.errorFHSleg,
      this.errorFJSMain,
      this.buzzerSwitch,
      this.tapping,
      this.swingSwitch,
      this.sealSwitch,
      this.shoulderIcon,
      this.resetSW,
      this.handLedSW,
      this.walkPercent,
      this.legKneadSpeed,
      this.voiceVolume,
      this.massageRange,
      this.msShdStrength,
      this.msBackStrength,
      this.msWstStrength,
      this.legFootRlStrength,
      this.footRIStrength,
      this.airThighStrength,
      this.airPeriStrength,
      this.airHeelStrength,
      this.airFootStrength,
      this.airLegStrength,
      this.airHipStrength,
      this.airWstStrength,
      this.airArmStrength,
      this.walkSpeed,
      this.airShdStrength,
      this.receiveErrorState});

  @override
  String toString() {
    return 'Receive0104{power: $power, massageType: $massageType, supportLegMove: $supportLegMove, support3d: $support3d, autoKnee: $autoKnee, footRoller: $footRoller,'
        ' manualMassageSpeed: $manualMassageSpeed, massageWidth: $massageWidth, nIonSwitch: $nIonSwitch, backHeatPower: $backHeatPower, coreHeatLevel: $coreHeatLevel, footHeatLevel: $footHeatLevel,'
        ' setWifi: $setWifi, airPower: $airPower, massagePart: $massagePart, remainTimeOne: $remainTimeOne, remainTimeTwo: $remainTimeTwo, footRollerSpeed: $footRollerSpeed, airBagArmState: $airBagArmState,'
        ' airBagThighState: $airBagThighState, airBagHeapState: $airBagHeapState, airBagCalfState: $airBagCalfState, airBagFootState: $airBagFootState, airBagNeckState: $airBagNeckState, '
        'airBagBackState: $airBagBackState, airBagShoulderState: $airBagShoulderState, chairState: $chairState, calfHeatPower: $calfHeatPower, locationMassageBall: $locationMassageBall, shdAdjEnter: $shdAdjEnter'
        'bodyMeasurement: $bodyMeasurement, adjustShoulderLocate: $adjustShoulderLocate, bodyMeasurementResult: $bodyMeasurementResult, locationBodyMeasurement: $locationBodyMeasurement, autoMoveKnee: $autoMoveKnee, motorZeroOrSlidingMotor: $motorZeroOrSlidingMotor, '
        'motorLegAngle: $motorLegAngle, motorBackState: $motorBackState, kneadWay: $kneadWay, modeBuzzer: $modeBuzzer, switchMusic: $switchMusic, volume: $volume, wholeAirBag: $wholeAirBag, modeOperation: $modeOperation, programTime: $programTime, programTimeNum: $programTimeNum, massageProgram: $massageProgram, '
        'ethernetState: $ethernetState, tabletState: $tabletState, calfRollerState: $calfRollerState, calfRollerSpeed: $calfRollerSpeed, locationCalfRoller: $locationCalfRoller, ledState: $ledState, language: $language, wifiState: $wifiState, wifiStateConn: $wifiStateConn, xdPower: $xdPower,'
        ' seatState: $seatState, pauseState: $pauseState, wifiStrength: $wifiStrength, tmallSwitch: $tmallSwitch, footRollerWay: $footRollerWay, legState: $legState, calfState: $calfState, knockState: $knockState, massageModuleMove: $massageModuleMove, zeroStrength: $zeroStrength, '
        'zeroStrengthStep: $zeroStrengthNum, errorFHSleg: $errorFHSleg, errorFJSMain: $errorFJSMain, buzzerSwitch: $buzzerSwitch, tapping: $tapping, swingSwitch: $swingSwitch, sealSwitch: $sealSwitch, shoulderIcon: $shoulderIcon,'
        'resetSW: $resetSW, handLedSW: $handLedSW, walkPercent: $walkPercent, legKneadSpeed: $legKneadSpeed, voiceVolume: $voiceVolume, massageRange: $massageRange, msShdStrength : $msShdStrength, msBackStrength : $msBackStrength, msWstStrength : $msWstStrength, legFootRlStrength : $legFootRlStrength, footRIStrength : $footRIStrength,'
        'airThighStrength : $airThighStrength, airPeriStrength : $airPeriStrength, airHeelStrength : $airHeelStrength, airFootStrength : $airFootStrength, airLegStrength : $airLegStrength, airHipStrength : $airHipStrength,'
        'airWstStrength : $airWstStrength, airArmStrength : $airArmStrength, walkSpeed : $walkSpeed, receiveErrorState: $receiveErrorState}';
  }
}
