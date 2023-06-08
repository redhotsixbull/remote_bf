import 'package:flutter/material.dart';
import 'package:remote_bf/app/data/vo/massagedata/massage.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

class MassageListTile extends StatefulWidget {
  const MassageListTile(
      {Key? key, required this.massage, this.currentFavorite = false})
      : super(key: key);

  final Massage massage;
  final bool currentFavorite;

  @override
  State<MassageListTile> createState() => _MassageListTileState();
}

class _MassageListTileState extends State<MassageListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: BFColor.gray300, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.massage.name,
                  style: BFGraphy.bfText2023.body2
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 4,
                ),
                widget.currentFavorite
                    ? BFIcon.ic_favorite(color: BFColor.gold)
                    : BFIcon.ic_favorite()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
