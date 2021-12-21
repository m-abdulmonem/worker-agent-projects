import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import '../../../manger/auth_controller.dart';
class LoginBody extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: controller.authForm,
        child: Column(
          children: [
            CustomInput(
              label: "username",
              onSave: (val) => controller.auth = val!,
              validator: controller.emailValidate,
            ),
            CustomInput(
              label: "password",
              onSave: (val) => controller.password = val!,
            ),
            CustomButton(text: "Sing in",onTap: controller.signIn,)
          ],
        ),
      ),
    );
  }


}
