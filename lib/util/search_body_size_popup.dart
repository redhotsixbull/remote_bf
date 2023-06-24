import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

class SearchBodySizePopup extends StatefulWidget {
  const SearchBodySizePopup({Key? key}) : super(key: key);

  @override
  State<SearchBodySizePopup> createState() => _SearchBodySizePopupState();
}

class _SearchBodySizePopupState extends State<SearchBodySizePopup> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context).pop();
    });
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: BFColor.primaryColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 20, 32, 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BFIcon.ic_caution_nor(size: Size(48, 48)),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "체형 검색 중",
                      style: BFGraphy.bfText2023.body2,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "체형 검색이 완료될 때까지\n움직이지 말고 잠시만 기다려주세요.",
                      style: BFGraphy.bfText2023.detail1,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
