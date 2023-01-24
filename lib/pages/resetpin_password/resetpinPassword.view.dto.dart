class ResetPinPasswordDto {
  ResetPinPasswordDto({
    required this.imagePathResetPin,
    required this.imagePathResetPinBGtop,
    required this.imagePathResetPinBGbottom,
    required this.topicText,
    required this.passwordText,
  });

  String imagePathResetPin;
  String imagePathResetPinBGtop;
  String imagePathResetPinBGbottom;
  String topicText;
  String passwordText;
}
