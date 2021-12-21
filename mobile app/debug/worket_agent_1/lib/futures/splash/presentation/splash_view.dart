import 'package:flutter/material.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';

import 'widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText("Splash Screen"),),
      body: SplashBody(),
    );
  }
}
