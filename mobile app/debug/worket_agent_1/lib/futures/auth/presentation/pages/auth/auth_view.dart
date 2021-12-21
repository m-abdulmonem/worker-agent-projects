import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import '../../manger/auth_controller.dart';

import 'widgets/auth_body.dart';
class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText("Auth Screen"),),
      body: AuthBody(),
    );
  }
}
