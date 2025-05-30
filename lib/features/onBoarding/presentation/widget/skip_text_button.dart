import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_font_style.dart';

class SkipTextButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const SkipTextButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Align(
          alignment: Alignment.topRight,
          child: Text(
            text,
            style: AppFontStyle.poppins300x16
                .copyWith(fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
