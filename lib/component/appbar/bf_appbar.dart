import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class BFAppBar extends StatefulWidget implements PreferredSizeWidget {
  const BFAppBar(
      {Key? key,
      required this.title,
      required this.appbarColor,
      this.backButtonAction,
      this.actionIcons,
      this.titleTextStyle})
      : super(key: key);

  final String title;
  final Color appbarColor;
  final VoidCallback? backButtonAction;
  final List<Widget>? actionIcons;
  final TextStyle? titleTextStyle;

  @override
  _BFAppBarState createState() => _BFAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 64);
}

class _BFAppBarState extends State<BFAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Navigator.canPop(context)
          ? IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
              ),
              onPressed: () {
                if (widget.backButtonAction != null) {
                  widget.backButtonAction!();
                } else {
                  Navigator.maybePop(context);
                }
              })
          : Container(),
      title: Text(
        widget.title,
        style: widget.titleTextStyle ??
            BFGraphy.bfText2023.body2
                .copyWith(fontWeight: FontWeight.w500, color: BFColor.white),
      ),
      backgroundColor: widget.appbarColor,
      actions: widget.actionIcons,
      elevation: 0,
      automaticallyImplyLeading: true,
    );
  }
}
