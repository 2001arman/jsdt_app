import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/auth/auth_type.dart';
import 'package:jsdt_app/feature/presentation/auth/auth_ui.dart';
import 'package:jsdt_app/feature/presentation/disclaimer/disclaimer_ui.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class BoardingUi extends StatelessWidget {
  static const String namePath = '/boarding_page';
  const BoardingUi({super.key});

  @override
  Widget build(BuildContext context) {
    void gotoAuth(AuthType authType) {
      Get.to(
        () => DisclaimerUi(
          onTapAgreed: () => Get.toNamed(AuthUi.namePath, arguments: authType),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: Get.width / 2,
                ),
              ),
              const SizedBox(height: 69),
              Text(
                'Select Role',
                style: blackTextStyle.copyWith(fontSize: 32),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () => gotoAuth(AuthType.educator),
                child: Row(
                  children: [
                    Image.asset('assets/icons/ellipse.png'),
                    const SizedBox(width: 22),
                    Text(
                      'Educator',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => gotoAuth(AuthType.educator),
                child: Row(
                  children: [
                    Image.asset('assets/icons/ellipse.png'),
                    const SizedBox(width: 22),
                    Text(
                      'Learner',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
