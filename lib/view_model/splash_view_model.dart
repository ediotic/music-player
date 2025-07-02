import 'package:get/get.dart';

import '../view/main_tabView/main_tab_view.dart';


class SplashViewModel extends GetxController {

  void loadView() async{
   await Future.delayed(const Duration( seconds: 3));
   Get.to(() => const MainTabview());
  }
}