import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

class MassageOffPopup extends StatefulWidget {
  const MassageOffPopup({Key? key}) : super(key: key);

  @override
  State<MassageOffPopup> createState() => _MassageOffPopupState();
}

class _MassageOffPopupState extends State<MassageOffPopup> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: BFColor.primaryColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 20, 32, 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BFIcon.ic_caution_nor(size: Size(48, 48)),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "마사지 종료중",
                      style: BFGraphy.bfText2023.body2,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "마사지 체어가 원위치로 이동중 입니다.\n완전히 멈출 때까지 움직이지 마세요.",
                      style: BFGraphy.bfText2023.detail1,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
