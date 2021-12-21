import 'package:flutter/material.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import 'widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Home",),
      body: HomeBody(),
    );
  }
}
