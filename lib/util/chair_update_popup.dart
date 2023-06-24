import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

//TODO 파라미터로 업데이트 정보 받아서 보여주기
class ChairUpdatePopup extends StatefulWidget {
  const ChairUpdatePopup({super.key});

  @override
  State<ChairUpdatePopup> createState() => _ChairUpdatePopupState();
}

class _ChairUpdatePopupState extends State<ChairUpdatePopup> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: BFColor.gray200,
                  borderRadius: BorderRadius.circular(14)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 24, 32, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "최근 업데이트 내역",
                        textAlign: TextAlign.center,
                        style: BFGraphy.bfText2023.body2.copyWith(
                            height: 1.5,
                            fontWeight: FontWeight.w700,
                            color: BFColor.white),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "최신 버전으로 업데이트 할 수 있습니다. 업데이트 중에는 안마의자를 사용할 수 없습니다.",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(height: 1.5, color: BFColor.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "버전 v0.0\n크기 123.45 MB",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(color: BFColor.gray500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "주요 업데이트 사항",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(height: 1.5, color: BFColor.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "업데이트 타이틀\n* 업데이트 내용 1\n* 업데이트 내용 2",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(color: BFColor.gray500),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: BFColor.gray300,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop(false);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                                child: Text(
                              "나중에",
                              style: BFGraphy.bfText2023.body2,
                            )),
                          ),
                        )),
                        Container(
                          width: 1,
                          color: BFColor.gray300,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "",
                              style: BFGraphy.bfText2023.body2,
                            ),
                          ),
                        ),
                        Expanded(
                            child: InkWell(
                          onTap: () async {
                            Navigator.of(context).pop(true);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Center(
                                child: Text(
                              "업데이트",
                              style: BFGraphy.bfText2023.body2
                                  .copyWith(color: BFColor.gold),
                            )),
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
