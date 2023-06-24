import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: BFColor.primaryColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
        child: Center(
          child: Text(
            text,
            style:
                BFGraphy.bfText2023.body2.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
