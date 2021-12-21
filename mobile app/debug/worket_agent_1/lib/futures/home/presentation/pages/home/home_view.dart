import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import 'package:worker_agent/core/services/db/get_storage_keys.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  get profile{
    final auth = FirebaseAuth.instance;

    // final users = FirebaseFirestore.instance.collection("users").get();
    // auth.signOut();

    GetStorage().erase();

    Get.offAllNamed("auth");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [

        CustomButton(text: "Get users", onTap: () => profile,)
        
      ],),
    );
  }
}
