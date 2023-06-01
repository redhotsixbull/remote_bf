import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class FullPageDialogOneButton extends StatelessWidget {
  const FullPageDialogOneButton(
      {Key? key, required this.title, this.body, this.buttonText})
      : super(key: key);

  final String title;
  final String? body;
  final String? buttonText;

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
                borderRadius: BorderRadius.circular(14)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: Container(
                color: BFColor.yellow,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 42,
                    ),
                    Text(
                      title,
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
                        body != null
                            ? Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 12, 16, 26),
                                child: Text(body ?? "",
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
