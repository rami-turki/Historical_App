import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/features/auth/presentation/cubit/auth_cubit.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      side: BorderSide(color: AppColors.lightGrey),
      value: checkValue,
      onChanged: (newValue) {
        setState(() {
          checkValue = newValue!;
          context
              .read<AuthCubit>()
              .updateTermsAndConditionCheckBox(newValue: newValue);
        });
      },
    );
  }
}
