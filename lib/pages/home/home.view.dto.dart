class HomeDto {
  HomeDto({
    required this.onTapWelcomeWeb,
    required this.imagePathWelcomeWeb,
    required this.imagePathEservice,
    required this.imagePathProfile,
    required this.imagePathMenuDocument,
    required this.imagePathMenuWorking,
    required this.imagePathMenuWait,
    required this.onTapEservice,
    required this.onPressedProfile,
    required this.onPressedCalendar,
    required this.menuWaitText,
    required this.menuWorkingText,
    required this.menuDocumentText,
    required this.helloText,
    required this.prefixText,
    required this.allAppointmentText,
    required this.appointmentText,
    required this.onPressedInProgess,
    required this.onPressedReadyToReceiveDocuments,
    required this.onPressedWaitingforPetitioner,
  });

  Function onPressedProfile;
  Function onTapEservice;
  Function onTapWelcomeWeb;
  Function onPressedCalendar;
  Function onPressedWaitingforPetitioner;
  Function onPressedInProgess;
  Function onPressedReadyToReceiveDocuments;

  String imagePathWelcomeWeb;
  String imagePathEservice;
  String imagePathProfile;
  String imagePathMenuDocument;
  String imagePathMenuWorking;
  String imagePathMenuWait;
  String menuWaitText;
  String menuWorkingText;
  String menuDocumentText;
  String helloText;
  String prefixText;
  String allAppointmentText;
  String appointmentText;
}
