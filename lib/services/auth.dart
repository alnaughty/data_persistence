import 'dart:convert';

import 'package:datapresistence/data_container/logged_user.dart';
import 'package:datapresistence/models/user.dart';
import 'package:http/http.dart' as http;

class Auth {
  final String urlString = 'http://192.168.1.56:8000/api';
  Future<void> login(email, password) async {
    try{
      await http.post('$urlString/user/login',body: {
        "email" : email,
        'password' : password
      }, headers: {
        "Accept" : "application/json"
      }).then((respo) {
        var data = json.decode(respo.body);
        if(respo.statusCode == 200){
          userDetails = User.fromData(data['data']['details']);
        }
      });
    }catch(e){
      print("ERROR : $e");
    }
  }
}