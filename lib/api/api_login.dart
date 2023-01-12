import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nsw_app/config.dart';
import 'package:nsw_app/model/login.user.Json.dart';

Future<userData> loginApi(username, password) async {
  String url = ApiConfig.instance.apiNswUrl;
  // print(url);
  var param = {"username": username, "password": password};
  // print(param);
  var header = {"Content-Type": "application/x-www-form-urlencoded"};
  encoding:
  Encoding.getByName('utf-8');
  var api = await http.post(Uri.parse(url), body: param, headers: header);

  print(api.body);
  print(param);
  var data = jsonDecode(api.body);
  print(data);
  userData userdata = userData.fromJson(data);
  return userdata;
}
