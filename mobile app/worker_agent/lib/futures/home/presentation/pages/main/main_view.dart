import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import 'manger/main_controller.dart';
import 'package:get/get.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainController>(
        builder: (controller){
          return controller.views.elementAt(controller.selectedView);
        },
      ),
      bottomNavigationBar: GetBuilder<MainController>(
        builder: (controller) =>  BottomNavigationBar(
          selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Get.isDarkMode ? Colors.white : Colors.black,
              fontSize: 20
          ),
          selectedItemColor: Get.isDarkMode ? Colors.white :Colors.black,
          selectedFontSize: 18,
          unselectedLabelStyle: const TextStyle(color: Colors.transparent, fontSize: 0),
          currentIndex: controller.selectedView,
          onTap: controller.onItemTapped,
          items: [
            BottomNavigationBarItem(
                activeIcon: CustomText("home".tr),
                icon: const Icon(CupertinoIcons.home),
                label: controller.selectedView ==0 ? "." :""),
            BottomNavigationBarItem(
                activeIcon: CustomText("chats".tr),
                icon: const Icon(CupertinoIcons.chat_bubble_2),
                label: controller.selectedView ==1 ? "." :""),
            BottomNavigationBarItem(
                activeIcon: CustomText("settings".tr),
                icon: const Icon(CupertinoIcons.settings),
                label:  controller.selectedView ==2 ? ".": ""),
          ],
        ),
      ),
    );
  }
}
