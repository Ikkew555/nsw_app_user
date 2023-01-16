class LoginDto {
  LoginDto({
    required this.onPressedForgotPassword,
    required this.onPressedRegister,
    required this.onPressedLogin,
    required this.imagePathLogo,
  });

  Function onPressedForgotPassword;
  Function onPressedRegister;
  Function onPressedLogin;

  String imagePathLogo;
}
