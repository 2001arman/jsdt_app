import 'package:flutter/material.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class AdsBanner extends StatelessWidget {
  const AdsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: kWhiteGreyColor,
      alignment: Alignment.center,
      child: Text(
        'Banner',
        style: mainTextStyle.copyWith(fontSize: 18, fontWeight: bold),
      ),
    );
  }
}
