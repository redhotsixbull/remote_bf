import 'package:flutter/material.dart';
import 'package:remote_bf/component/bottomsheet/bottom_sheet_header.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

class ControlShoulderBottomSheet extends StatefulWidget {
  const ControlShoulderBottomSheet({Key? key}) : super(key: key);

  @override
  State<ControlShoulderBottomSheet> createState() =>
      _ControlShoulderBottomSheetState();
}

class _ControlShoulderBottomSheetState
    extends State<ControlShoulderBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeader(
            text: "어깨 위치 조절",
          ),
          Container(
            color: BFColor.primaryColor,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "마사지 위치 조절 버튼을 눌러서\n어깨에 맞게 조절해보세요.",
                  style: BFGraphy.bfText2023.body2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  color: BFColor.primaryColor,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(99),
                        color: BFColor.gray300,
                        border: Border.all(color: BFColor.gray200)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: BFIcon.ic_arrow_top_nor(
                                  color: BFColor.gold, size: Size(40, 40))),
                          SizedBox(
                            height: 68,
                          ),
                          InkWell(
                              onTap: () {},
                              child: BFIcon.ic_arrow_end_nor(
                                  color: BFColor.gold, size: Size(40, 40))),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  color: BFColor.gray400,
                  width: double.infinity,
                  height: 1,
                ),
                Container(
                  width: double.infinity,
                  color: BFColor.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 21, 0, 36),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "바로 시작",
                            style: BFGraphy.bfText2023.title4,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
