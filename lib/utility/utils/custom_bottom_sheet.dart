import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class CustomBottomSheet {
  static void settingsBottomSheet() {
    RxString selectedTheme = 'light'.obs;
    Get.bottomSheet(
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 70,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: kMainColor,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Choose App Theme',
              style: mainTextStyle.copyWith(fontSize: 18, fontWeight: bold),
            ),
            const SizedBox(height: 10),
            Divider(
              color: kWhiteGreyColor,
            ),
            Obx(
              () => RadioListTile(
                value: 'light',
                groupValue: selectedTheme.value,
                onChanged: (_) => selectedTheme.value = 'light',
                title: Text(
                  'Light',
                  style: mainTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
            Obx(
              () => RadioListTile(
                value: 'dark',
                groupValue: selectedTheme.value,
                onChanged: (_) => selectedTheme.value = 'dark',
                title: Text(
                  'Dark',
                  style: mainTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      isScrollControlled: true,
      isDismissible: true,
    );
  }
}
