class LoginDto {
  LoginDto({
    required this.onPressedForgotPassword,
    required this.onPressedRegister,
    required this.onPressedLogin,
    required this.imagePathLogo,
    required this.loginValidate,
    required this.usernameValidate,
    required this.passwordValidate,
    required this.registerText,
    required this.onPressedResetPin,
    required this.onPressedSetPin,
    required this.usernameText,
    required this.passwordText,
    required this.rememberUserText,
    required this.forgetPassText,
    required this.loginText,
    required this.onPressedSuccess,
  });

  Function onPressedForgotPassword;
  Function onPressedRegister;
  Function onPressedLogin;
  Function loginValidate;
  Function usernameValidate;
  Function passwordValidate;
  Function onPressedResetPin;
  Function onPressedSetPin;
  Function onPressedSuccess;

  String imagePathLogo;
  String registerText;
  String usernameText;
  String passwordText;
  String rememberUserText;
  String forgetPassText;
  String loginText;
}
