import 'package:worker_agent/core/services/custom_widgets.dart';

import '../../../manger/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterBody extends GetWidget<AuthController> {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: controller.authForm,
        child: Column(
          children: [
            VerticalSpace(30),
            CustomInput(
              label: "email",
              onSave: (val) => controller.email = val!,
              validator: controller.emailValidate,
            ),
            CustomInput(
              label: "username",
              onSave: (val) => controller.username = val!,
            ),

            CustomInput(
              label: "name",
              onSave: (val) => controller.name = val!,
            ),
            CustomInput(
              label: "password",
              onSave: (val) => controller.password = val!,
            ),
            CustomButton(text: "Sing Up",onTap: controller.signUp,)
          ],
        ),
      ),
    );
  }
}
