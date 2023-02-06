class SplashScreenDto {
  SplashScreenDto({
    required this.onPressedRegister,
    required this.onPressedLogin,
    required this.loginText,
    required this.imagePathLogo,
    required this.registerText,
  });

  Function onPressedRegister;
  Function onPressedLogin;

  String loginText;
  String imagePathLogo;
  String registerText;
}
