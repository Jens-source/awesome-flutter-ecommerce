import 'package:ecommerce/core/config/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension WidgetFunction on Widget {
  static showErrorToast({required final String message}) {
    Get.snackbar(
      "Error",
      message,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  static showProgressDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return WillPopScope(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.yellowColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                height: 60,
                width: 60,
                child: const CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
            ),
            onWillPop: () {
              return Future.value(false);
            });
      },
    );
  }
}
