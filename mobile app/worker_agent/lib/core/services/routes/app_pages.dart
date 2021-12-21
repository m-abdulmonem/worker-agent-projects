import 'package:get/get.dart';
import 'package:worker_agent/core/services/binding/auth_binding.dart';
import 'package:worker_agent/futures/auth/presentation/pages/auth/auth_view.dart';
import 'package:worker_agent/futures/auth/presentation/pages/forget_password/forget_password_view.dart';
import 'package:worker_agent/futures/auth/presentation/pages/login/login_view.dart';
import 'package:worker_agent/futures/auth/presentation/pages/register/register_view.dart';
import 'package:worker_agent/futures/home/presentation/pages/home/home_view.dart';
import 'package:worker_agent/futures/home/presentation/pages/main/main_view.dart';
import 'package:worker_agent/futures/on_boarding/presentation/on_boarding/boarding_view.dart';
import 'package:worker_agent/futures/on_boarding/presentation/splash/splash_view.dart';
import 'app_routes.dart';

class AppPages {
  static const String  initial = Routes.SPLASH;

  static final routes = <GetPage<dynamic>>[
    GetPage(name: Routes.SPLASH, page: () => const SplashView()),
    GetPage(name: Routes.ON_BOARDING, page: () => const BoardingView()),
    GetPage(
      name: Routes.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
      children: [
        GetPage(name: Routes.LOGIN, page: () => const LoginView()),
        GetPage(name: Routes.Register, page: () => const RegisterView()),
        GetPage(name: Routes.FORGET_PASSWORD, page: () => const ForgetPasswordView()),
      ],
    ),
    GetPage(
        name: Routes.MAIN,
        page: () => const MainView(),
        children: [GetPage(name: Routes.HOME, page: () => const HomeView())])
  ];
}
