import 'package:flutter/material.dart';

import '../constants/constants_ui.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.title,
    required this.onTap,
    this.paddingVertical = 15,
    this.disable = false,
    this.showPlusIcon = false,
    this.fontSize = 16,
  });
  final String title;
  final VoidCallback onTap;
  final double paddingVertical, fontSize;
  final bool disable, showPlusIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: paddingVertical),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: disable ? kGreyColor : kMainColor,
          boxShadow: defaultBoxShadow,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showPlusIcon)
                Icon(
                  Icons.add,
                  color: kWhiteColor,
                ),
              Text(
                title,
                style: whiteTextStyle.copyWith(
                  fontSize: fontSize,
                  fontWeight: bold,
                  color: disable ? kMainColor : kWhiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
