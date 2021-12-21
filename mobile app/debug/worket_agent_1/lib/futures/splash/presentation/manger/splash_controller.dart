import 'dart:async';
import 'package:get/get.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';


class SplashController extends GetxController {
  final _duration = 3;
  @override
  void onInit() {
    _timer();
    super.onInit();
  }

  void _timer() => Timer(Duration(seconds: _duration), () => _redirect());

  void _redirect() async =>
      Get.offAllNamed(CustomWidgets.isLoggedIn ? "main" : "auth");
}
