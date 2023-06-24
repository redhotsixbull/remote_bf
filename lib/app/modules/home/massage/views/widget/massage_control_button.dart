import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

class MassageControlButton extends StatefulWidget {
  const MassageControlButton(
      {Key? key,
      required this.title,
      required this.currentStatus,
      required this.onClick})
      : super(key: key);

  final String title;
  final String currentStatus;
  final VoidCallback onClick;

  @override
  State<MassageControlButton> createState() => _MassageControlButtonState();
}

class _MassageControlButtonState extends State<MassageControlButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onClick();
      },
      child: Container(
        decoration: BoxDecoration(
            color: BFColor.primaryColor,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style:
                    BFGraphy.bfText2023.detail2.copyWith(color: BFColor.white),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    widget.currentStatus,
                    style:
                        BFGraphy.bfText2023.body2.copyWith(color: BFColor.gold),
                  ),
                  BFIcon.ic_menu_vertifal_nor(
                    color: BFColor.white,
                    size: Size(20, 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
