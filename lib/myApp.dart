import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'common/color_extension.dart';
import 'view/splash_view.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Circular Std",
        scaffoldBackgroundColor: TColor.bg,
        textTheme: Theme.of(context).textTheme.apply(
           bodyColor: TColor.primaryText,
          displayColor: TColor.primaryText,
        ),
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
      ),
      home: const SplashView(),
    );
  }
} 