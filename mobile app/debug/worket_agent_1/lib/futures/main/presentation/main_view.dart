import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import 'manger/main_controller.dart';
import 'package:get/get.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  get profile{
    final auth = FirebaseAuth.instance.currentUser;

    final users = FirebaseFirestore.instance.collection("users").doc(auth?.uid).get();
    print(users);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText("Main View"),
      ),
      body: Column(
        children: [

          CustomButton(text: "Get users", onTap: () => profile,)
        ],
      ),
    );
  }
}
