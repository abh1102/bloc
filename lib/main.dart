import 'package:bloc_project_todo/core/theme/app_theme.dart';
import 'package:bloc_project_todo/core/utils/app_string.dart';
import 'package:flutter/material.dart';

import 'core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false,
      title: AppString.AppName,
      theme: AppTheme.darkThemeMode,
      routerConfig: router,

    );
  }
}
