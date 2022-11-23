import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../model/user/users_model.dart';
import '../../service/data_service.dart';

class ServiceProvider with ChangeNotifier {
  List<Users> response = [];

  Future<bool> fetchUser(email, password) async {
    final client = RestClient(Dio(BaseOptions(contentType: "application/json")),
        baseUrl: "https://636eb123bb9cf402c807e3fd.mockapi.io/");
    response = await client.getUsers();
    notifyListeners();
    for (var item in response) {
      if (item.email == email) {
        return true;
      } else if (item.password == password) {
        return true;
      }
    }
    return false;
  }

  Future<bool> postUser(email, name, password) async {
    for (var item in response) {
      if (item.email == email) {
        return false;
      }
    }

    RestClient(Dio(BaseOptions(contentType: "application/json")),
            baseUrl: "https://636eb123bb9cf402c807e3fd.mockapi.io/")
        .loginPage(email, password, name);
    return true;
  }
}