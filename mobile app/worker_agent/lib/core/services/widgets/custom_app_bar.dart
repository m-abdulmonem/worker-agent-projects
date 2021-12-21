import 'package:google_fonts/google_fonts.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final double height;
  final bool? isBack;
  const CustomAppBar(
      {Key? key,
      this.height = kToolbarHeight,
      this.title = "",
      this.isBack = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        title!.toUpperCase().tr,
        color: colorPrimary,
        textStyle: GoogleFonts.lato(),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      leading: leading(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 14.5),
          child: GestureDetector(
            child: const Icon(Icons.notifications),
            onTap: () => Navigator.pop(Get.context!),
          ),
        )
      ],
    );
  }

  Widget leading() {
    return isBack!
        ? GestureDetector(
            child: const Icon(CupertinoIcons.left_chevron),
            onTap: () => Navigator.pop(Get.context!),
          )
        : GestureDetector(
            child: const Icon(CupertinoIcons.search),
            onTap: () => Get.to("main/search"),
          );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
