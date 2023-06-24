import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

/// 확인버튼 누르면 true값 뒤로가기를 누르거나 강제로 닫을시 null값 리턴
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
          padding: EdgeInsets.all(40),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: BFColor.gray300),
                color: BFColor.primaryColor,
                borderRadius: BorderRadius.circular(14)),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 24,
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
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: BFColor.gray300,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            buttonText ?? "확인",
                            style: BFGraphy.bfText2023.body2.copyWith(
                                color: BFColor.gold,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
