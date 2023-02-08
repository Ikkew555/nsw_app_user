class WaitingForPetitionerDto {
  WaitingForPetitionerDto({
    required this.onPressedShowSystem,
    required this.titleText,
    required this.selectSystemText,
    required this.selectedSystemText,
    required this.searchText,
  });

  Function onPressedShowSystem;
  String titleText;
  String selectSystemText;
  String selectedSystemText;
  String searchText;
}
