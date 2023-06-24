import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

class SettingListTile extends StatefulWidget {
  const SettingListTile(
      {Key? key,
      required this.title,
      required this.trailing,
      required this.onClick})
      : super(key: key);

  final String title;
  final String trailing;
  final VoidCallback onClick;
  @override
  State<SettingListTile> createState() => _SettingListTileState();
}

class _SettingListTileState extends State<SettingListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onClick();
      },
      child: Container(
        width: double.infinity,
        color: BFColor.gray,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 15, 24, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: BFGraphy.bfText2023.body2,
              ),
              Row(
                children: [
                  Text(
                    widget.trailing,
                    style: BFGraphy.bfText2023.detail1
                        .copyWith(color: BFColor.gold),
                  ),
                  BFIcon.ic_arrow_dropup(color: BFColor.gray500),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
