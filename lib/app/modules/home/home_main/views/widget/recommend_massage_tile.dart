import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

class RecommendMassageTile extends StatelessWidget {
  const RecommendMassageTile(
      {Key? key,
      required this.title,
      required this.massageId,
      required this.icon})
      : super(key: key);

  final String title;
  final int massageId;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
            color: BFColor.gray400, borderRadius: BorderRadius.circular(10)),
        width: 235.w,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 11, 16, 18),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(99)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: BFIcon.ic_health_care(
                      size: Size(54, 54), color: BFColor.black),
                ),
              ),
              const SizedBox(
                width: 19,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: BFGraphy.bfText2023.detail2
                          .copyWith(color: BFColor.white.withOpacity(0.5)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      title,
                      style: BFGraphy.bfText2023.detail1.copyWith(fontSize: 15),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      title,
                      style: BFGraphy.bfText2023.detail2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
