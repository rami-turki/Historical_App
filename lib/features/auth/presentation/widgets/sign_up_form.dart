import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:history_app/features/auth/presentation/cubit/auth_states.dart';
import 'package:history_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:history_app/features/auth/presentation/widgets/auth_button.dart';
import 'package:history_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:history_app/features/auth/presentation/widgets/terms_condition_widget.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        if (state is EmailVerficationSent) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignInScreen(),
              ));
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.verMessage)));
        }
      },
      builder: (context, state) {
        final authCubit = context.read<AuthCubit>();
        return Form(
          key: context.read<AuthCubit>().signUpcubitAuthKey,
          child: Column(
            children: [
              CustomTextFormField(
                  onChanged: (firstName) {
                    context.read<AuthCubit>().firstName = firstName;
                  },
                  text: AppStrings.firstName,
                  showSuffix: false,
                  obscure: false),
              CustomTextFormField(
                  onChanged: (lastName) {
                    context.read<AuthCubit>().lastName = lastName;
                  },
                  text: AppStrings.lastName,
                  showSuffix: false,
                  obscure: false),
              CustomTextFormField(
                  onChanged: (email) {
                    context.read<AuthCubit>().email = email;
                  },
                  text: AppStrings.email,
                  showSuffix: false,
                  obscure: false),
              CustomTextFormField(
                  onChanged: (password) {
                    context.read<AuthCubit>().password = password;
                  },
                  showSuffix: true,
                  text: AppStrings.password),
              const SizedBox(height: 16),
              TermsConditionWidget(
                signInText: false,
                showCheckBox: true,
                text1: AppStrings.iHaveAgreeTo,
                text2: AppStrings.termsCondition,
              ),
              const SizedBox(height: 88),
              state is SignUpLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : AuthButton(
                      color: authCubit.termsCondition == true
                          ? AppColors.lightBrown
                          : Colors.grey,
                      text: AppStrings.signUpString,
                      onTap: () {
                        if (authCubit.termsCondition == true) {
                          if (authCubit.signUpcubitAuthKey.currentState!
                              .validate()) {
                            authCubit.signUpWithEmailPassowrd();
                          }
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
