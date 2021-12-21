import 'package:get/get.dart';
import 'package:worker_agent/core/services/binding/auth_binding.dart';
import 'package:worker_agent/futures/auth/presentation/pages/auth/auth_view.dart';
import 'package:worker_agent/futures/auth/presentation/pages/forget_password/forget_password_view.dart';
import 'package:worker_agent/futures/auth/presentation/pages/login/login_view.dart';
import 'package:worker_agent/futures/auth/presentation/pages/register/register_view.dart';
import 'package:worker_agent/futures/home/presentation/pages/home/home_view.dart';
import 'package:worker_agent/futures/main/presentation/main_view.dart';
import 'package:worker_agent/futures/splash/presentation/splash_view.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => SplashView()),
    GetPage(
      name: Routes.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
      children: [
        GetPage(name: Routes.LOGIN, page: () => LoginView()),
        GetPage(name: Routes.Register, page: () => RegisterView()),
        GetPage(name: Routes.FORGET_PASSWORD, page: () => ForgetPasswordView()),
      ],
    ),
    GetPage(
        name: Routes.MAIN,
        page: () => MainView(),
        children: [GetPage(name: Routes.HOME, page: () => HomeView())])
  ];
}
