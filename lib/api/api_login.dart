import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nsw_app/config.dart';

Future loginApi(username, password) async {
  String url = ApiConfig.instance.apiNswUrl;
  // print(url);
  var param = {"username": username, "password": password};
  // print(param);
  var header = {"Content-Type": "application/x-www-form-urlencoded"};
  var api =
      await http.post(Uri.parse(url), body: jsonEncode(param), headers: header);
  print(api.body);
  var data = jsonDecode(api.body);
  return data;
}
