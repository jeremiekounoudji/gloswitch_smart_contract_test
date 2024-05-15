import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/shared/types.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

import 'globalVariable.dart';

class Utility extends GetxController {
  var hideBox = false.obs;
  var isTouched = false.obs;

  Rx<ScrollPhysics> physicNever = const NeverScrollableScrollPhysics().obs;
  Rx<ScrollPhysics> physicAlway = const AlwaysScrollableScrollPhysics().obs;

  showInfo(title, message, context, btnText, btnFunction, [customView]) {
    return Dialogs.materialDialog(
        msg: message,
        msgStyle: TextStyle(color: blackColor, fontSize: 15, fontWeight: FontWeight.normal),
        title: title,
        titleStyle: TextStyle(color: blackColor, fontSize: 20),
        color: Colors.white,
        context: context,
        barrierDismissible: true,
        customView: customView ?? Container(),
        actions: [
          IconsButton(
            onPressed: btnFunction,
            text: btnText,
            // iconData: Icons.delete,
            color: firstColor,
            textStyle: TextStyle(color: whiteColor, fontSize: 15),
          ),
        ]);
  }

// dialogs utils
  showSnack(title, value, duration) {
    return Get.snackbar("$title", '$value',
        duration: Duration(seconds: duration),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: firstColor,
        colorText: whiteColor);
  }

  showPending() {
    return Get.dialog(
        Material(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: firstColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircularProgressIndicator(
                    color: whiteColor,
                    strokeWidth: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                      text: "Patientez...",
                      max: 1,
                      align: TextAlign.center,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ),
        barrierDismissible: false);
  }
}
