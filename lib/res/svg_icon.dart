import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String phantomLogo = 'images/svg/icon/main/img_logo.svg';
final String pharaohLogo = 'images/svg/icon/main/img-pharaoh-logo.svg';
final String logo = 'images/svg/img_logo.svg';

final String wifiOn = 'images/svg/icon/main/ico_wifi_on.svg';
final String wifiOff = 'images/svg/icon/main/ico_wifi_off.svg';
final String bluetoothOn = 'images/svg/icon/main/ico_bt_on.svg';
final String bluetoothOff = 'images/svg/icon/main/ico_bt_off.svg';
final String star = 'images/svg/icon/main/ico_star.svg';
final String settings = 'images/svg/icon/main/ico_settings.svg';
final String powerOn = 'images/svg/icon/main/ico_power.svg';
final String speakerOn = 'images/svg/icon/quick/ico_speaker_02.svg';
final String speakerOff = 'images/svg/icon/quick/ico_mute.svg';

final String quickMenuNor = 'images/svg/icon/quick/btn-quickmenu-nor.svg';
final String quickMenuSel = 'images/svg/icon/quick/btn-quickmenu-sel.svg';

final String meditation = 'images/svg/icon/main/ico_meditation.svg';
final String mental = 'images/svg/icon/main/ico-mental.svg';
final String auto = 'images/svg/icon/main/ico_auto.svg';
final String brain = 'images/svg/icon/main/ico-brain.svg';
final String healthCare = 'images/svg/icon/main/ico_healthcare.svg';
final String manual = 'images/svg/icon/main/ico_manual.svg';
final String deleteImg = 'images/svg/icon/ico-delete.svg';

final String icoAuto01 = 'images/svg/icon/auto/ico_auto_01.svg';
final String icoAuto02 = 'images/svg/icon/auto/ico_auto_02.svg';
final String icoAuto03 = 'images/svg/icon/auto/ico_auto_03.svg';
final String icoAuto04 = 'images/svg/icon/auto/ico_auto_04.svg';
final String icoAuto05 = 'images/svg/icon/auto/ico_auto_05.svg';
final String icoAuto06 = 'images/svg/icon/auto/ico_auto_06.svg';
final String icoAuto07 = 'images/svg/icon/auto/ico_auto_07.svg';
final String icoAuto08 = 'images/svg/icon/auto/ico_auto_08.svg';
final String icoAuto09 = 'images/svg/icon/auto/ico_auto_09.svg';
final String icoAuto10 = 'images/svg/icon/auto/ico_auto_10.svg';
final String icoAuto11 = 'images/svg/icon/auto/ico_auto_11.svg';
final String icoAuto12 = 'images/svg/icon/auto/ico_auto_12.svg';
final String icoAuto13 = 'images/svg/icon/auto/ico_auto_13.svg';
final String icoAuto14 = 'images/svg/icon/auto/ico_auto_14.svg';
final String icoAuto15 = 'images/svg/icon/auto/ico_auto_15.svg';
final String icoAuto16 = 'images/svg/icon/auto/ico_auto_16.svg';
final String icoAuto17 = 'images/svg/icon/auto/ico_auto_17.svg';
final String icoAuto18 = 'images/svg/icon/auto/ico_auto_18.svg';
final String icoAuto19 = 'images/svg/icon/auto/ico_auto_19.svg';
final String icoAuto20 = 'images/svg/icon/auto/ico_auto_20.svg';

final String icoBrain01 = 'images/svg/symbol/brain/ico-breathing.svg';
final String icoBrain02 = 'images/svg/symbol/brain/ico-concentration.svg';
final String icoBrain03 = 'images/svg/symbol/brain/ico-image.svg';
final String icoBrain04 = 'images/svg/symbol/brain/ico-morning.svg';
final String icoBrain05 = 'images/svg/symbol/brain/ico-night.svg';
final String icoBrain06 = 'images/svg/symbol/brain/ico-training.svg';
final String icoBrain07 = 'images/svg/symbol/brain/ico-wellbeing.svg';

final String icoHealthCare01 = 'images/svg/symbol/healthcare/ico-health-01.svg';
final String icoHealthCare02 = 'images/svg/symbol/healthcare/ico-health-02.svg';
final String icoHealthCare03 = 'images/svg/symbol/healthcare/ico-health-03.svg';
final String icoHealthCare04 = 'images/svg/symbol/healthcare/ico-health-04.svg';
final String icoHealthCare05 = 'images/svg/symbol/healthcare/ico-health-05.svg';
final String icoHealthCare06 = 'images/svg/symbol/healthcare/ico-health-06.svg';
final String icoHealthCare07 = 'images/svg/symbol/healthcare/ico-health-07.svg';
final String icoHealthCare08 = 'images/svg/symbol/healthcare/ico-health-08.svg';

final String icoManual01 = 'images/svg/symbol/manual/ico_manual_01.svg';
final String icoManual02 = 'images/svg/symbol/manual/ico_manual_02.svg';
final String icoManual03 = 'images/svg/symbol/manual/ico_manual_03.svg';
final String icoManual04 = 'images/svg/symbol/manual/ico_manual_04.svg';
final String icoManual05 = 'images/svg/symbol/manual/ico_manual_05.svg';
final String icoManual06 = 'images/svg/symbol/manual/ico_manual_06.svg';
final String icoManual07 = 'images/svg/symbol/manual/ico_manual_07.svg';
final String icoManual08 = 'images/svg/symbol/manual/ico_manual_08.svg';

final String icoMeditation01 =
    'images/svg/symbol/meditation/ico-meditation-01.svg';
final String icoMeditation02 =
    'images/svg/symbol/meditation/ico-meditation-02.svg';
final String icoMeditation03 =
    'images/svg/symbol/meditation/ico-meditation-03.svg';
final String icoMeditation04 =
    'images/svg/symbol/meditation/ico-meditation-04.svg';

final String icoMental01 = 'images/svg/symbol/mental/ico-mental-01.svg';
final String icoMental02 = 'images/svg/symbol/mental/ico-mental-02.svg';
final String icoMental03 = 'images/svg/symbol/mental/ico-mental-03.svg';
final String icoMental04 = 'images/svg/symbol/mental/ico-mental-04.svg';
final String icoMental05 = 'images/svg/symbol/mental/ico-mental-05.svg';
final String icoMental06 = 'images/svg/symbol/mental/ico-mental-06.svg';
final String icoMental07 = 'images/svg/symbol/mental/ico-mental-07.svg';
final String icoMental08 = 'images/svg/symbol/mental/ico-mental-08.svg';

final String chairSetting = 'images/svg/icon/btn-chair-setting.svg';
final String changeRemote = 'images/svg/icon/btn-change-remote.svg';
final String control = 'images/svg/icon/btn-control.svg';
final String add = 'images/svg/icon/ico-add.svg';
final String airOff = 'images/svg/icon/ico-air-off.svg';
final String airOn = 'images/svg/icon/ico-air-on.svg';
final String alarm = 'images/svg/icon/ico-alarm.svg';
final String album = 'images/svg/icon/ico-album.svg';
final String bright = 'images/svg/icon/ico-bright.svg';
final String calendar = 'images/svg/icon/ico-calendar.svg';
final String calendarDim = 'images/svg/icon/ico-calendar-dim.svg';
final String check = 'images/svg/icon/ico-check.svg';
final String check2 = 'images/svg/icon/ico-check-02.svg';
final String delete = 'images/svg/icon/ico-delete.svg';
final String deleteDim = 'images/svg/icon/ico-delete-dim.svg';
final String down = 'images/svg/icon/ico-down.svg';
final String kakao = 'images/svg/icon/ico-kakao.svg';
final String lock = 'images/svg/icon/ico-lock.svg';
final String music = 'images/svg/icon/ico-music.svg';
final String next = 'images/svg/icon/ico-next.svg';
final String nextDim = 'images/svg/icon/ico-next-dim.svg';
final String notice = 'images/svg/icon/ico-notice.svg';
final String point = 'images/svg/icon/ico-point.svg';
final String replay = 'images/svg/icon/ico-replay.svg';
final String services = 'images/svg/icon/ico-services.svg';
final String setting = 'images/svg/icon/ico-setting.svg';
final String sound = 'images/svg/icon/ico-sound.svg';
final String soundWaveHigh = 'images/svg/icon/ico-soundwave-high.svg';
final String soundWaveLow = 'images/svg/icon/ico-soundwave-low.svg';
final String soundWaveMid = 'images/svg/icon/ico-soundwave-mid.svg';
final String time = 'images/svg/icon/ico-time.svg';
final String up = 'images/svg/icon/ico-up.svg';

final String icon_tip = 'images/svg/icon/ico-tip.svg';

final Widget phantomLogoIcon = svgReturn(phantomLogo);
final Widget pharaohLogoIcon = svgReturn(pharaohLogo);
final Widget logoIcon = svgReturn(logo);

final Widget meditationIcon = svgReturn(meditation);
final Widget mentalIcon = svgReturn(mental);
final Widget autoIcon = svgReturn(auto);
final Widget brainIcon = svgReturn(brain);
final Widget healthCareIcon = svgReturn(healthCare);
final Widget manualIcon = svgReturn(manual);
final Widget deleteIcon = svgReturn(deleteImg);

final Widget icoAuto01Svg = showMassageIcon(icoAuto01);
final Widget icoAuto02Svg = showMassageIcon(icoAuto02);
final Widget icoAuto03Svg = showMassageIcon(icoAuto03);
final Widget icoAuto04Svg = showMassageIcon(icoAuto04);
final Widget icoAuto05Svg = showMassageIcon(icoAuto05);
final Widget icoAuto06Svg = showMassageIcon(icoAuto06);
final Widget icoAuto07Svg = showMassageIcon(icoAuto07);
final Widget icoAuto08Svg = showMassageIcon(icoAuto08);
final Widget icoAuto09Svg = showMassageIcon(icoAuto09);
final Widget icoAuto10Svg = showMassageIcon(icoAuto10);
final Widget icoAuto11Svg = showMassageIcon(icoAuto11);
final Widget icoAuto12Svg = showMassageIcon(icoAuto12);
final Widget icoAuto13Svg = showMassageIcon(icoAuto13);
final Widget icoAuto14Svg = showMassageIcon(icoAuto14);
final Widget icoAuto15Svg = showMassageIcon(icoAuto15);
final Widget icoAuto16Svg = showMassageIcon(icoAuto16);
final Widget icoAuto17Svg = showMassageIcon(icoAuto17);
final Widget icoAuto18Svg = showMassageIcon(icoAuto18);
final Widget icoAuto19Svg = showMassageIcon(icoAuto19);
final Widget icoAuto20Svg = showMassageIcon(icoAuto20);

final Widget icoBrain01Svg = showMassageIcon(icoBrain01);
final Widget icoBrain02Svg = showMassageIcon(icoBrain02);
final Widget icoBrain03Svg = showMassageIcon(icoBrain03);
final Widget icoBrain04Svg = showMassageIcon(icoBrain04);
final Widget icoBrain05Svg = showMassageIcon(icoBrain05);
final Widget icoBrain06Svg = showMassageIcon(icoBrain06);
final Widget icoBrain07Svg = showMassageIcon(icoBrain07);

final Widget icoHealthCare01Svg = showMassageIcon(icoHealthCare01);
final Widget icoHealthCare02Svg = showMassageIcon(icoHealthCare02);
final Widget icoHealthCare03Svg = showMassageIcon(icoHealthCare03);
final Widget icoHealthCare04Svg = showMassageIcon(icoHealthCare04);
final Widget icoHealthCare05Svg = showMassageIcon(icoHealthCare05);
final Widget icoHealthCare06Svg = showMassageIcon(icoHealthCare06);
final Widget icoHealthCare07Svg = showMassageIcon(icoHealthCare07);
final Widget icoHealthCare08Svg = showMassageIcon(icoHealthCare08);

final Widget icoManual01Svg = showMassageIcon(icoManual01);
final Widget icoManual02Svg = showMassageIcon(icoManual02);
final Widget icoManual03Svg = showMassageIcon(icoManual03);
final Widget icoManual04Svg = showMassageIcon(icoManual04);
final Widget icoManual05Svg = showMassageIcon(icoManual05);
final Widget icoManual06Svg = showMassageIcon(icoManual06);
final Widget icoManual07Svg = showMassageIcon(icoManual07);
final Widget icoManual08Svg = showMassageIcon(icoManual08);

final Widget icoMeditation01Svg = showMassageIcon(icoMeditation01);
final Widget icoMeditation02Svg = showMassageIcon(icoMeditation02);
final Widget icoMeditation03Svg = showMassageIcon(icoMeditation03);
final Widget icoMeditation04Svg = showMassageIcon(icoMeditation04);

final Widget icoMental01Svg = showMassageIcon(icoMental01);
final Widget icoMental02Svg = showMassageIcon(icoMental02);
final Widget icoMental03Svg = showMassageIcon(icoMental03);
final Widget icoMental04Svg = showMassageIcon(icoMental04);
final Widget icoMental05Svg = showMassageIcon(icoMental05);
final Widget icoMental06Svg = showMassageIcon(icoMental06);
final Widget icoMental07Svg = showMassageIcon(icoMental07);
final Widget icoMental08Svg = showMassageIcon(icoMental08);

final Widget chairSettingSvg = svgReturn(chairSetting);
final Widget changeRemoteSvg = svgReturn(changeRemote);
final Widget controlSvg = svgReturn(control);
final Widget addSvg = svgReturn(add);
final Widget airOnSvg = svgReturn(airOn);
final Widget airOffSvg = svgReturn(airOff);
final Widget alarmSvg = svgReturn(alarm);
final Widget albumSvg = svgReturn(album);
final Widget brightSvg = svgReturn(bright);
final Widget calendarSvg = svgReturn(calendar);
final Widget calendarDimSvg = svgReturn(calendarDim);
final Widget checkSvg = svgReturn(check);
final Widget check2Svg = svgReturn(check2);
final Widget deleteSvg = svgReturn(delete);
final Widget deleteDimSvg = svgReturn(deleteDim);
final Widget downSvg = svgReturn(down);
final Widget kakaoSvg = svgReturn(kakao, color: Colors.black);
final Widget lockSvg = svgReturn(lock);
final Widget musicSvg = svgReturn(music);
final Widget nextSvg = svgReturn(next);
final Widget nextDimSvg = svgReturn(nextDim);
final Widget noticeSvg = svgReturn(notice);
final Widget pointSvg = svgReturn(point);
final Widget replaySvg = svgReturn(replay);
final Widget servicesSvg = svgReturn(services);
final Widget settingSvg = svgReturn(setting);
final Widget soundSvg = svgReturn(sound);
final Widget soundWaveHighSvg = svgReturn(soundWaveHigh);
final Widget soundWaveMidSvg = svgReturn(soundWaveMid);
final Widget soundWaveLowSvg = svgReturn(soundWaveLow);
final Widget timeSvg = svgReturn(time);
final Widget upSvg = svgReturn(up);

final Widget iconTip = svgStepImg(icon_tip);

Widget showMassageIcon(String asset, {Color? color}) {
  Color colorV = Colors.white;
  if (color != null) {
    colorV = color;
  }
  return SvgPicture.asset(
    asset,
    // semanticsLabel: 'Acme Logo',
    color: colorV,
    width: 60.w,
    // fit: BoxFit.contain,
  );
}

Widget svgReturn(String asset, {Color? color}) {
  Color colorV = Colors.white;
  if (color != null) {
    colorV = color;
  }
  return SvgPicture.asset(
    asset,
    semanticsLabel: 'Acme Logo',
    color: colorV,
    fit: BoxFit.contain,
  );
}

Widget svgStepImg(String asset, {Color? color}) {
  return SvgPicture.asset(
    asset,
    semanticsLabel: 'Acme Logo',
    fit: BoxFit.contain,
  );
}

Widget noColorSvgReturn(String asset) {
  return SvgPicture.asset(asset);
}
