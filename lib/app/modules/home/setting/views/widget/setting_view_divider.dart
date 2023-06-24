import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';

class SettingViewDivider extends StatelessWidget {
  const SettingViewDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        width: double.infinity,
        height: 10,
        color: BFColor.gray300,
      ),
    );
  }
}
