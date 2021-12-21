import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import '../../manger/auth_controller.dart';
import 'widgets/login_body.dart';
class LoginView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: CustomText("Login Screen")),
      body: LoginBody(),
    );
  }
}
