import 'package:logger/logger.dart';

class User {
  Logger logger = Logger();
  User._myConstructor();
  static User instance = User._myConstructor();
  String? username;
  String? prefix;
  String? firstname;
  String? lastname;
  String? displayName;

  clear() {
    instance = User._myConstructor();
  }

  void setusername(String? username) {
    this.username = username;
  }

  void setprefix(String? prefix) {
    this.prefix = prefix;
  }

  void setfirstname(String? firstname) {
    this.firstname = firstname;
  }

  void setlastname(String? lastname) {
    this.lastname = lastname;
  }

  void setdisplayName(String? displayName) {
    this.displayName = displayName;
  }
}
