import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:opamobile/services/user_service.dart';
class TokenPageService{

  static Future<dynamic> tokenToBack(String token) async {
    try {
      final response = await http.post(
        Uri.parse(
            'http://192.168.0.36:3000/table/add-customer'),
        headers: <String, String>{
          'Content-Type':
              'application/json; charset=UTF-8',
        },
        body: jsonEncode({ 
          'tableId':token,
          'customerId': UserSingleton.getUserInfo().id
        })
      );
      return response;
    }
    catch(e){
      print("$e");
    }
  }
}