import 'package:flutter/material.dart';
import 'package:remote_bf/component/bottomsheet/bottom_sheet_body.dart';
import 'package:remote_bf/component/bottomsheet/bottom_sheet_header.dart';
import 'package:remote_bf/component/bottomsheet/bottom_sheet_tile.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class BottomSheetSelect extends StatefulWidget {
  const BottomSheetSelect(
      {Key? key,
      required this.title,
      required this.lists,
      required this.currentSelect})
      : super(key: key);

  final String title;
  final List<String> lists;
  final int currentSelect;
  @override
  State<BottomSheetSelect> createState() => _BottomSheetSelectState();
}

class _BottomSheetSelectState extends State<BottomSheetSelect> {
  int currentSelect = 0;
  @override
  void initState() {
    super.initState();
    currentSelect = widget.currentSelect;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeader(
            text: widget.title,
          ),
          BottomSheetBody(
              widget: Column(
            children: List.generate(widget.lists.length, (index) {
              bool select = false;
              if (currentSelect == index) {
                select = true;
              }
              return BottomSheetTile(
                text: widget.lists[index],
                select: select,
                onClick: () {
                  setState(() {
                    currentSelect = index;
                  });
                },
              );
            }),
          )),
          Container(
            color: BFColor.primaryColor,
            height: 16,
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
                  Navigator.of(context).pop(currentSelect);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "확인",
                      style: BFGraphy.bfText2023.title4,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
