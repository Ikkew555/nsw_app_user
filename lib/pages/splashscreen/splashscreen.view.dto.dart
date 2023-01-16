class SplashScreenDto {
  SplashScreenDto({
    required this.onPressedRegister,
    required this.onPressedLogin,
    required this.registerText,
  });

  Function onPressedRegister;
  Function onPressedLogin;

  String registerText;
}
