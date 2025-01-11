import 'package:bloc_project_todo/core/theme/app_color.dart';
import 'package:flutter/material.dart';


class AppTheme{
  //for darktheme always
//declare static so that we acess it without creating object
  static final darkThemeMode=ThemeData.dark(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppColor.appBarColor),
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: AppColor.appColor)
  );


}
