import 'package:flutter/material.dart';
import 'package:remote_bf/app/data/vo/wifi/wifi_info_vo.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

class WifiListTile extends StatefulWidget {
  const WifiListTile(
      {Key? key, required this.wifiInfoVo, required this.onClick})
      : super(key: key);

  final WifiInfoVo wifiInfoVo;
  final VoidCallback onClick;
  @override
  State<WifiListTile> createState() => _WifiListTileState();
}

class _WifiListTileState extends State<WifiListTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onClick();
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  widget.wifiInfoVo.name ?? "UnKnown",
                  style: BFGraphy.bfText2023.detail1,
                )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(3, 16, 3, 16),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: BFIcon.ic_wifi(),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: BFIcon.ic_lock(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: BFColor.gray400,
            ),
          ],
        ),
      ),
    );
  }
}
