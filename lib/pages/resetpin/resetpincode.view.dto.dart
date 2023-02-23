class ResetpincodeDto {
  ResetpincodeDto({
    required this.onPressedNavigateResetUsername,
    required this.onPressedCancelResetPin,
    required this.onPressedSkip,
  });

  Function onPressedNavigateResetUsername;
  Function onPressedCancelResetPin;
  Function onPressedSkip;
}
