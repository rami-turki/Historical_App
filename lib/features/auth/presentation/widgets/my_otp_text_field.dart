import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_fonts.dart';
import 'package:history_app/features/auth/presentation/cubit/auth_cubit.dart';

import 'package:pinput/pinput.dart';

class MyOtpTextField extends StatefulWidget {
  const MyOtpTextField({super.key});

  @override
  State<MyOtpTextField> createState() => _MyOtpTextFieldState();
}

class _MyOtpTextFieldState extends State<MyOtpTextField> {
  bool? isCompleted = false;
  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();
    return Pinput(
      validator: (value) {
        if (value!.isEmpty) {
          return 'please fll this field!';
        } else {
          return null;
        }
      },
      onCompleted: (value) {
        authCubit.isOtpFilled = true;
      },
      submittedPinTheme: PinTheme(
          textStyle: TextStyle(
              fontFamily: AppFonts.poppins,
              fontWeight: FontWeight.w900,
              fontSize: 28),
          width: 70,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: AppColors.blackGrey))),
      length: 4,
      focusedPinTheme: PinTheme(
          textStyle: TextStyle(
              fontFamily: AppFonts.poppins,
              fontWeight: FontWeight.w900,
              fontSize: 28),
          width: 70,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.black))),
      defaultPinTheme: PinTheme(
          textStyle: TextStyle(
              fontFamily: AppFonts.poppins,
              fontWeight: FontWeight.w900,
              fontSize: 28),
          width: 70,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.backGroundColor,
              border: Border.all(
                color: AppColors.grey,
              ))),
    );
  }
}
