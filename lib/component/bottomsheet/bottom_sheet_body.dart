import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';

class BottomSheetBody extends StatefulWidget {
  const BottomSheetBody({Key? key, required this.widget}) : super(key: key);

  final Widget widget;
  @override
  State<BottomSheetBody> createState() => _BottomSheetBodyState();
}

class _BottomSheetBodyState extends State<BottomSheetBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BFColor.primaryColor,
      child: widget.widget,
    );
  }
}
