import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../view_model/splasH_view_model.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final splashVM = Get.put(SplashViewModel());
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
    splashVM.loadView();
  }
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.sizeOf(context);
    return  Scaffold(
      body: Center(
        child: Image.asset("assets/img/app_logo.png",
        width: mq.width * 0.35,),
      ),
    );
  }
}