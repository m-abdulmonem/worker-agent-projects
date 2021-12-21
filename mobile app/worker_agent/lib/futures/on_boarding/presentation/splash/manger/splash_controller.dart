import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import 'package:worker_agent/core/services/db/fire_store_db.dart';

class SplashController extends GetxController {
  final _duration = 2;
  @override
  void onInit() {
    _timer();
    super.onInit();
  }

  void _timer() => Timer(Duration(seconds: _duration), () => _redirect());

  void _redirect() async {
    if (CustomWidgets.isLoggedIn) isUserBlocked();

    Get.offAllNamed(CustomWidgets.isLoggedIn
        ? "main"
        : CustomWidgets.isBoarding
            ? "auth"
            : "on/boarding");
  }

  void isUserBlocked() => FirebaseFirestore.instance
          .collection(FireStoreDb.USERS)
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .get()
          .then((user) {
        if (user.data()?['status'] == "blocked") {
          //singOut; //TODO
          Get.offAllNamed("auth");
        }
      });
}
