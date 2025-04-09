import 'package:flutter/material.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.title,
    this.isPassword = false,
    this.minLines = 1,
    required this.controller,
    this.onChanged,
    this.isReadOnly = false,
    this.textInputType = TextInputType.text,
    this.validator,
    this.suffix,
    this.margin = 20,
    this.borderRadius = 10,
    this.borderColor,
    this.required = false,
  });

  final String? hintText;
  final String? title;
  final bool isPassword, isReadOnly;
  final int minLines;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final Widget? suffix;
  final double margin;
  final double borderRadius;
  final Color? borderColor;
  final bool required;

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscure = true;

  @override
  void initState() {
    obscure = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
            Row(
              children: [
                Text(
                  widget.title!,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                if (widget.required)
                  Text(
                    ' *',
                    style: redTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
              ],
            ),
          if (widget.title != null) const SizedBox(height: 6),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: defaultBoxShadow,
            ),
            child: TextFormField(
              controller: widget.controller,
              obscureText: obscure,
              readOnly: widget.isReadOnly,
              onChanged: widget.onChanged,
              validator: widget.validator,
              decoration: InputDecoration(
                hintText: widget.hintText,
                suffixIcon: widget.isPassword
                    ? GestureDetector(
                        onTap: () {
                          if (obscure == false) {
                            obscure = true;
                          } else {
                            obscure = false;
                          }
                          setState(() {});
                        },
                        child: obscure
                            ? Icon(Icons.visibility_off, color: kBlackColor)
                            : Icon(Icons.visibility, color: kBlackColor),
                      )
                    : widget.suffix,
                hintStyle: greyTextStyle.copyWith(fontSize: 16),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
                filled: true,
                fillColor: kWhiteColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  borderSide: BorderSide.none,
                ),
              ),
              maxLines: widget.minLines,
              keyboardType: widget.textInputType,
            ),
          ),
        ],
      ),
    );
  }
}
