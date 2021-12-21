import 'package:flutter/cupertino.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import 'widgets/chat_message_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatMessageView extends StatelessWidget {

  const ChatMessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          "Joe Steve".toUpperCase().tr,
          color: colorPrimary,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        leading:  GestureDetector(
          child: const Icon(CupertinoIcons.left_chevron),
          onTap: () => Navigator.pop(Get.context!),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.5),
            child: GestureDetector(
              child: const Icon(Icons.notifications),
              onTap: () => Navigator.pop(Get.context!),
            ),
          )
        ],
      ),
      body: const ChatMessageBody(),
    );
  }
}
