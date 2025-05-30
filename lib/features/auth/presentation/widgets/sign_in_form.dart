import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:history_app/features/auth/presentation/cubit/auth_states.dart';
import 'package:history_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:history_app/features/auth/presentation/widgets/forget_password_widget.dart';
import 'package:history_app/features/home/presentation/widgets/new_nav_bar.dart';
import 'package:history_app/features/onBoarding/presentation/widget/my_button_widget.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        if (state is SignInLoaded) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomHomeNavBar(),
              ));
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Login Succefull!')));
        } else if (state is SignInError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        } else if (state is EmailVerficationSent) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.verMessage)));
        }
      },
      builder: (context, state) {
        print(state);
        return Form(
            key: authCubit.signIncubitAuthKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomTextFormField(
                    text: AppStrings.email,
                    showSuffix: false,
                    obscure: false,
                    onChanged: (email) {
                      authCubit.email = email;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomTextFormField(
                    text: AppStrings.password,
                    showSuffix: true,
                    onChanged: (password) {
                      authCubit.password = password;
                    },
                  ),
                ),
                const SizedBox(height: 16),
                const ForgetPasswordWidget(),
                const SizedBox(height: 102),
                state is SignInLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : MyButtonWidget(
                        text: AppStrings.signIn,
                        onTap: () {
                          if (authCubit.signIncubitAuthKey.currentState!
                              .validate()) {
                            authCubit.signInWithEmailPassword();
                          }
                        },
                      ),
              ],
            ));
      },
    );
  }
}
