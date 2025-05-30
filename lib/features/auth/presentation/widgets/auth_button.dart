import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_font_style.dart';

class AuthButton extends StatelessWidget {
  final Color? textColor;
  final Color? color;
  final void Function()? onTap;
  final String text;
  const AuthButton(
      {super.key, required this.text, this.onTap, this.color, this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: Align(
            alignment: Alignment.center,
            child: Text(text,
                style: AppFontStyle.poppins500x18.copyWith(color: textColor)),
          ),
        ),
      ),
    );
  }
}
