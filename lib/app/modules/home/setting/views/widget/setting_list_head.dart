import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class SettingListHead extends StatefulWidget {
  const SettingListHead({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<SettingListHead> createState() => _SettingListHeadState();
}

class _SettingListHeadState extends State<SettingListHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BFColor.gray,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
        child: Row(
          children: [
            Text(
              widget.title,
              style:
                  BFGraphy.bfText2023.detail1.copyWith(color: BFColor.gray500),
            ),
          ],
        ),
      ),
    );
  }
}
