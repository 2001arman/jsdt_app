import 'package:flutter/material.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class ButtonItems extends StatelessWidget {
  const ButtonItems({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kMainColor,
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: bold),
      ),
    );
  }
}
