import 'package:worker_agent/futures/chats/presentation/pages/chats/chat_view.dart';
import 'package:worker_agent/futures/home/presentation/pages/home/home_view.dart';
import 'package:worker_agent/futures/settings/presentation/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController{

  int selectedView = 0;

  List<Widget> views = <Widget>[
    const HomeView(),
    const ChatView(),
    const SettingsView(),
  ];

  void onItemTapped(int index) {
    selectedView = index;
    update();
  }

}