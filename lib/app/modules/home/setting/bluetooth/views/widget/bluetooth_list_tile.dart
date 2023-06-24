import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

class BluetoothListTile extends StatefulWidget {
  const BluetoothListTile({Key? key, required this.onClick}) : super(key: key);

  final VoidCallback onClick;
  @override
  State<BluetoothListTile> createState() => _BluetoothListTileState();
}

class _BluetoothListTileState extends State<BluetoothListTile> {
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BFIcon.ic_check_nor(color: BFColor.gold),
                ),
                Expanded(
                    child: Text(
                  "name",
                  style: BFGraphy.bfText2023.detail1,
                )),
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
