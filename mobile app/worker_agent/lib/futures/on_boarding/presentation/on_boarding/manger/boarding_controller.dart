import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:worker_agent/core/services/db/get_storage_keys.dart';
import '../widgets/on_boarding_item.dart';

class BoardingController extends GetxController {
  PageController? pageController;
  bool? isFinished = false;
  final int duration = 600;
  int? count = 0;

  final items = [
    const OnBoardingItem(
      image: "assets/images/onboarding1.png",
      title: 'Identities of pornography',
      subTitle:
          'Porn addiction, which is a subset of sex addiction, can refer to a range of behaviors that are done in excess and negatively impact one’s life. ',
    ),
    const OnBoardingItem(
      image: "assets/images/onboarding2.png",
      title: 'Todo list Manger',
      subTitle:
          'Porn addiction, which is a subset of sex addiction, can refer to a range of behaviors that are done in excess and negatively impact one’s life. ',
    ),
  ];


  @override
  void onInit() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        update();
      });
    super.onInit();
  }

  void next(){
    pageController?.nextPage(
        duration: Duration(milliseconds: duration), curve: Curves.easeIn);
  }

  void save() {
    GetStorage().write(GetStorageKeys.IS_ON_BOARDING_FINISHED_KEY, true);
    Get.offNamed("auth");
  }
}
