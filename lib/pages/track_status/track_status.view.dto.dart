// ignore_for_file: non_constant_identifier_names

class TrackstatusDto {
  TrackstatusDto({
    required this.onPressedShowSystem,
    required this.titleText,
    required this.selectSystemText,
    required this.selectedSystemText,
    required this.searchText,
    required this.status_number_all,
    required this.status_number_waiting,
    required this.status_number_working,
    required this.status_number_ready,
    required this.status_number_cancel,
    required this.status_number_completed,
  });

  Function onPressedShowSystem;
  String titleText;
  String selectSystemText;
  String selectedSystemText;
  String searchText;
  String status_number_all;
  String status_number_waiting;
  String status_number_working;
  String status_number_ready;
  String status_number_cancel;
  String status_number_completed;
}
