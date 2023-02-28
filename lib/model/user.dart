// ignore_for_file: non_constant_identifier_names, unnecessary_this

import 'package:logger/logger.dart';

class User {
  Logger logger = Logger();
  User._myConstructor();
  static User instance = User._myConstructor();
  String? username;
  String? password;
  String? prefsUsername;
  String? prefsPassword;
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

  void setpassword(String? password) {
    this.password = password;
  }

  void setprefs_password(String? prefsPassword) {
    this.prefsPassword = prefsPassword;
  }

  void setprefs_username(String? prefsUsername) {
    this.prefsUsername = prefsUsername;
  }
}
