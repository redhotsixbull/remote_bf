import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:remote_bf/res/bf_color.dart';

Future<dynamic> showPopup(BuildContext context, Widget widget,
    {bool? closeOutLineClick, Color? barrierColor}) async {
  return await showDialog(
    context: context,
    barrierDismissible: closeOutLineClick ?? false,
    barrierColor: barrierColor ?? BFColor.black.withOpacity(0.80),
    builder: (BuildContext context) {
      return widget;
    },
  );
}

showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: BFColor.black,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM);
}

Future<dynamic> openBottomSheet(BuildContext context, Widget widget,
    {bool? closeOutLineClick, Color? barrierColor}) async {
  return await showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: barrierColor ?? BFColor.black.withOpacity(0.80),
      builder: (BuildContext context) {
        return widget;
      });
}
