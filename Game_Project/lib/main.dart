import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:game_project/feature/splash/splash_view.dart';
import 'package:game_project/product/constants/string_constants.dart';
import 'package:game_project/product/initialize/app_builder.dart';
import 'package:game_project/product/initialize/app_theme.dart';
import 'package:game_project/product/initialize/application_start.dart';

import 'feature/home/home_view.dart';

Future<void> main() async {
  await ApplicationStart.init();

  runApp(const ProviderScope(child: MyApp()));
  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
       return AppBuilder(child).build();
        //return AppBuilder(child).build();
      },
      title: StringConstants.appName,
      home: SplashView(),
      theme: AppTheme(context).theme,

    );
  }
}