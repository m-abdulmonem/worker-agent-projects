import 'package:get/get.dart';
import 'package:worker_agent/futures/splash/presentation/manger/splash_controller.dart';

class Binding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }

}