import 'package:get/get.dart';
import 'package:worker_agent/futures/auth/data/provider/auth_provider.dart';
import 'package:worker_agent/futures/auth/data/repository/auth_repository.dart';
import 'package:worker_agent/futures/auth/domain/repository/i_auth_repository.dart';
import 'package:worker_agent/futures/auth/presentation/manger/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthProvider());
    Get.lazyPut<IAuthRepository>(() => AuthRepository(provider: Get.find()));
    Get.lazyPut(() => AuthController(authRepository: Get.find()));
  }
}