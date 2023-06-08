import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class ModeTile extends StatefulWidget {
  const ModeTile(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);

  final String title;
  final Widget icon;
  final VoidCallback onTap;

  @override
  State<ModeTile> createState() => _ModeTileState();
}

class _ModeTileState extends State<ModeTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        decoration: BoxDecoration(
            color: BFColor.gray200, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(1, 16, 1, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.icon,
              Text(
                widget.title,
                style: BFGraphy.bfText2023.body2.copyWith(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
