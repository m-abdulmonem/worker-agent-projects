import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../manger/auth_controller.dart';
class AuthBody extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomButton(text: "Login",onTap: controller.signInAnon,),
          CustomButton(text: "Login",onTap: () => Get.toNamed("auth/login"),),
          CustomButton(text: "Register ",onTap: () => Get.toNamed("auth/register"),),
          CustomButton(text: "Facebook Login",onTap: controller.signInWithFacebook,),
          CustomButton(text: "Google Login",onTap: controller.signInWithGoogle,),
          CustomButton(text: "Firestore",onTap: (){
            FirebaseFirestore.instance.collection("workers").doc().set({
              "name" : "Worker name"
            });
          },),
        ],
      ),
    );
  }
}
