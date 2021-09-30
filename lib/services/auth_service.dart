import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AuthService {
  Dio _dioClient = Dio(
    BaseOptions(
      baseUrl: 'https://flutter-auth-nodejs.herokuapp.com/auth/',
    ),
  );

  login(email, password) async {
    try {
      Response response = await _dioClient.post(
        'login',
        data: {
          "email": email,
          "password": password,
        },
      );
      return response.data;
    } on DioError catch (error) {
      print(error.response);
      return error.response!.data;
    }
  }

  register(name, email, password) async {
    try {
      Response response = await _dioClient.post(
        'register',
        data: {"name": name, "email": email, "password": password},
      );
      return response.data;
    } on DioError catch (error) {
      return error.response!.data;
    }
  }
}
