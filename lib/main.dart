import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import 'app/routes/app_pages.dart';

void main() {
  BFGraphy.init();

  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) => GetMaterialApp(
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
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: BFColor.gray200,
            hintStyle: BFGraphy.bfText2023.detail2,
            contentPadding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(color: Colors.red, width: 1.0)),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
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
            child: SafeArea(child: widget!),
          );
        },
      ),
    ),
  );
}
