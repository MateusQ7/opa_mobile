import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:opamobile/pages/menu/menu_interface.dart';
import 'package:opamobile/services/auth_service.dart';
import 'package:opamobile/services/configservice.dart';

class MenuService {
  static Future<List<Menu>?> getMenu() async {
    try {
      final userToken = AuthService.getUserToken();
      final response = await http.get(
          Uri.parse('${ConfigService.apiurl}/product/'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $userToken',
          });

      if (response.statusCode != 200) {
        return null;
      }

      final List<Menu> menuFromBack = jsonDecode(response.body);
      print("MENUFROMBACK $menuFromBack");

      if (menuFromBack == null) {
        return null;
      }

      // caso precise iterar, ta aqui o código, só mudar o retorno.
      // List<Menu> menuList = [];
      // menuFromBack.forEach((e) => menuList.add(Menu.fromJson(e)));

      return menuFromBack;
    } catch (e) {
      print("$e");
    }
    return null;
  }
}
