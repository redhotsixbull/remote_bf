import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class BottomSheetTile extends StatefulWidget {
  const BottomSheetTile(
      {Key? key,
      required this.text,
      this.select = false,
      required this.onClick})
      : super(key: key);

  final String text;

  final bool select;
  final VoidCallback onClick;
  @override
  State<BottomSheetTile> createState() => _BottomSheetTileState();
}

class _BottomSheetTileState extends State<BottomSheetTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onClick();
      },
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              widget.text,
              style: BFGraphy.bfText2023.body1.copyWith(
                  color: widget.select ? BFColor.gold : BFColor.white,
                  fontWeight:
                      widget.select ? FontWeight.w500 : FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
