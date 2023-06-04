import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import 'app/routes/app_pages.dart';

void main() {
  BFGraphy.init();

  runApp(
    GetMaterialApp(
      title: "Application",
      theme: ThemeData(
        dialogTheme: const DialogTheme(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        fontFamily: "BodyFriendSans",
        primarySwatch: BFColor.primaryColor,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      builder: (context, widget) {
        double scaleFactor = MediaQuery.of(context).textScaleFactor;
        if (MediaQuery.of(context).textScaleFactor >= 1) {
          scaleFactor = 1.0;
        }
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: scaleFactor),
          child: widget!,
        );
      },
    ),
  );
}
