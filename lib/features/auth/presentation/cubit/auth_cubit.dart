import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:history_app/features/auth/presentation/cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthIniti());

  late String? firstName;
  late String? lastName;
  late String? email;
  late String? password;

  bool? termsCondition = false;
  bool? isOtpFilled = false;

  GlobalKey<FormState> signUpcubitAuthKey = GlobalKey();
  GlobalKey<FormState> signIncubitAuthKey = GlobalKey();

  Future signUpWithEmailPassowrd() async {
    try {
      emit(SignUpLoading());
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      await sendEmailVerfication();
      emit(EmailVerficationSent(
          verMessage: 'Please check you email to verify your account'));
    } on FirebaseException catch (e) {
      emit(AuthError(errorMessage: e.toString()));
    }
  }

  void updateTermsAndConditionCheckBox({required newValue}) {
    termsCondition = newValue;
    emit(TermsConditionUpdated());
  }

  Future sendEmailVerfication() async {
    try {
      await FirebaseAuth.instance.currentUser?.sendEmailVerification();
      emit(EmailVerficationSent(
          verMessage: 'Please check your email to verify your account'));
    } on FirebaseException catch (e) {
      emit(AuthError(errorMessage: e.toString()));
    }
  }

  Future signInWithEmailPassword() async {
    try {
      emit(SignInLoading());
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);

      FirebaseAuth.instance.currentUser!.emailVerified
          ? emit(SignInLoaded())
          : await sendEmailVerfication();
    } on FirebaseException catch (e) {
      emit(SignInError(errorMessage: e.toString()));
    }
  }

  Future signOut() async {
    await FirebaseAuth.instance.signOut();
    emit(SignOutState());
  }
}
