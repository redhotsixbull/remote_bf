import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class FullPageDialogNoButton extends StatefulWidget {
  const FullPageDialogNoButton(
      {Key? key, required this.title, this.body, this.icon, required this.task})
      : super(key: key);

  final String title;
  final String? body;
  final Widget? icon;
  final Future<dynamic> task;

  @override
  State<FullPageDialogNoButton> createState() => _FullPageDialogNoButtonState();
}

class _FullPageDialogNoButtonState extends State<FullPageDialogNoButton> {
  bool? result;

  @override
  void initState() {
    super.initState();
    widget.task.then((data) {
      setState(() {
        Navigator.of(context).pop(data);
      });
    }).catchError((e) {
      Navigator.of(context).pop(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(
                color: BFColor.primaryColor,
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: Container(
                color: BFColor.gold,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 42,
                    ),
                    widget.icon != null ? widget.icon! : Container(),
                    Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      style: BFGraphy.bfText2023.body2.copyWith(
                          height: 1.5,
                          fontWeight: FontWeight.w700,
                          color: BFColor.white),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        widget.body != null
                            ? Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 12, 16, 26),
                                child: Text(widget.body!,
                                    textAlign: TextAlign.center,
                                    style: BFGraphy.bfText2023.detail1
                                        .copyWith(color: BFColor.white)),
                              )
                            : const SizedBox(
                                height: 36,
                              ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
