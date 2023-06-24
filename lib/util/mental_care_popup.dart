import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class MentalCarePopup extends StatefulWidget {
  const MentalCarePopup(
      {Key? key,
      required this.title,
      required this.text,
      required this.imageAsset})
      : super(key: key);

  final String title;
  final String text;
  final String imageAsset;
  @override
  State<MentalCarePopup> createState() => _MentalCarePopupState();
}

class _MentalCarePopupState extends State<MentalCarePopup> {
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
            padding: const EdgeInsets.all(46),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imageAsset), fit: BoxFit.fill),
                    color: BFColor.gray200,
                    borderRadius: BorderRadius.circular(14)),
                child: AspectRatio(
                    aspectRatio: 283 / 300,
                    child: Stack(
                      children: [],
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(46),
            child: AspectRatio(
              aspectRatio: 283 / 300,
              child: Column(
                children: [
                  Expanded(child: Container()),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFF686868).withOpacity(0.2),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14))),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 12, 8, 18),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  widget.title,
                                  style: BFGraphy.bfText2023.body1,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.text,
                                  style: BFGraphy.bfText2023.body2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
