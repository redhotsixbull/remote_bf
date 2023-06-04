import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BFHomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const BFHomeAppBar({
    Key? key,
    required this.appbarColor,
    this.actionIcons,
  }) : super(key: key);

  final Color appbarColor;
  final List<Widget>? actionIcons;

  @override
  _BFHomeAppBarState createState() => _BFHomeAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 64);
}

class _BFHomeAppBarState extends State<BFHomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(child: SvgPicture.asset("assets/logo/BF_text_logo.svg")),
            Expanded(child: Container()),
            Container(
              child: Row(
                children: widget.actionIcons ??
                    [
                      Container(
                        width: 1,
                      )
                    ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
