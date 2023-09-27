
import 'package:flutter/material.dart';
import 'package:game_project/feature/splash/splash_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppBuilder {
  AppBuilder(this.child);

  final Widget? child;

  Widget build() {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        //background: Container(color: const Color(0xFFF5F5F5)),
      ),
      initialRoute: "/", // <---  sıkıntı burada;
      routes: {
        '/': (_) => SplashView(),
      },
      onGenerateInitialRoutes: (route) {
        return [
          MaterialPageRoute(builder: (_) => SplashView())
        ];
      },
    );
  }
}