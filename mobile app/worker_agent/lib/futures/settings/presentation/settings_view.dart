import 'package:worker_agent/core/services/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'widgets/settings_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Settings"),
      body: SettingsBody(),
    );
  }
}
