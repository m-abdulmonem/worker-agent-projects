import 'package:get/get.dart';
import 'package:worker_agent/futures/home/presentation/pages/home/manger/home_controller.dart';
import 'package:worker_agent/futures/home/presentation/pages/main/manger/main_controller.dart';
import 'package:worker_agent/futures/on_boarding/presentation/on_boarding/manger/boarding_controller.dart';
import 'package:worker_agent/futures/on_boarding/presentation/splash/manger/splash_controller.dart';

class Binding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => BoardingController());
  }

}