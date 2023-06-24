import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_icon.dart';

class ControlShoulderButton extends StatefulWidget {
  const ControlShoulderButton(
      {Key? key, required this.onUpClick, required this.onDownClick})
      : super(key: key);

  final VoidCallback onUpClick;
  final VoidCallback onDownClick;

  @override
  State<ControlShoulderButton> createState() => _ControlShoulderButtonState();
}

class _ControlShoulderButtonState extends State<ControlShoulderButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        color: BFColor.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  widget.onUpClick();
                },
                child: BFIcon.ic_arrow_top_nor()),
            SizedBox(
              height: 50,
            ),
            InkWell(
                onTap: () {
                  widget.onDownClick();
                },
                child: BFIcon.ic_arrow_end_nor()),
          ],
        ),
      ),
    );
  }
}
