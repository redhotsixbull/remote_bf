import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remote_bf/res/bf_color.dart';

class BFIcon {
  const BFIcon._();

  static const Color defaultColor = BFColor.white;
  static const Size defaultSize = Size(24, 24);

  static SvgPicture ic_bluetooth(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_bluetooth.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_care(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_care.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_favorite(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_favorite.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_health_care(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_health_care.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_home(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_home.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_mental_care(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_mental_care.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_option(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_option.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_part_care(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_part_care.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_plat_mode(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_plat_mode.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_setting(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_setting.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_tune(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_tune.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_volume_3(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_volume_3.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }

  static SvgPicture ic_wifi(
      {Color color = defaultColor,
      BlendMode blendMode = BlendMode.srcIn,
      Size size = defaultSize}) {
    return SvgPicture.asset("assets/icon/ic_wifi.svg",
        height: size.height,
        width: size.width,
        colorFilter: ColorFilter.mode(color, blendMode));
  }
}
