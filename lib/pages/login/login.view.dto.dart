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
  });

  Function onPressedForgotPassword;
  Function onPressedRegister;
  Function onPressedLogin;
  Function loginValidate;
  Function usernameValidate;
  Function passwordValidate;
  Function onPressedResetPin;
  Function onPressedSetPin;

  String imagePathLogo;
  String registerText;
}
