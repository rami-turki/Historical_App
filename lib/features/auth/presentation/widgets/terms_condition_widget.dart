import 'package:flutter/material.dart';
import 'package:history_app/features/auth/presentation/widgets/custom_check_box.dart';
import 'package:history_app/features/auth/presentation/widgets/terms_condition_text.dart';

class TermsConditionWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final bool showCheckBox;
  final bool signInText;
  const TermsConditionWidget(
      {super.key,
      required this.text1,
      required this.text2,
      required this.showCheckBox,
      required this.signInText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        showCheckBox ? const CustomCheckBox() : const SizedBox.shrink(),
        TermsConditionText(
          text1: text1,
          text2: text2,
          signInOrUpText: signInText,
        ),
      ],
    );
  }
}
