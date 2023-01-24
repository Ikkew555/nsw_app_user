class ResetPinUsernameDto {
  ResetPinUsernameDto(
      {required this.imagePathResetPin,
      required this.imagePathResetPinBGtop,
      required this.imagePathResetPinBGbottom,
      required this.topicText,
      required this.usernameText,
      required this.onPressedPassword});

  String imagePathResetPin;
  String imagePathResetPinBGtop;
  String imagePathResetPinBGbottom;
  String topicText;
  String usernameText;

  Function onPressedPassword;
}
