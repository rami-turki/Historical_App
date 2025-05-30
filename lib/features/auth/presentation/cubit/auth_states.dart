abstract class AuthStates {}

class AuthIniti extends AuthStates {}

class SignUpLoading extends AuthStates {}

class SignOutState extends AuthStates {}

class SignUpError extends AuthStates {
  final String errMessage;

  SignUpError({required this.errMessage});
}

class SignInLoading extends AuthStates {}

class SignInLoaded extends AuthStates {}

class SignInError extends AuthStates {
  final String errorMessage;

  SignInError({required this.errorMessage});
}

class EmailVerficationSent extends AuthStates {
  final String verMessage;

  EmailVerficationSent({required this.verMessage});
}

class SignUpLoaded extends AuthStates {}

class TermsConditionUpdated extends AuthStates {}

class AuthOtpChanged extends AuthStates {}

class AuthError extends AuthStates {
  final String errorMessage;

  AuthError({required this.errorMessage});
}
