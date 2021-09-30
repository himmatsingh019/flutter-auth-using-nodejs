import 'package:flutter_auth_using_nodejs/screens/home.dart';
import 'package:flutter_auth_using_nodejs/screens/login.dart';
import 'package:flutter_auth_using_nodejs/screens/register.dart';

class AppRoutes {
  static const String LoginRoute = '/login';
  static const String RegisterRoute = '/register';
  static const String HomeRoute = '/home';

  static final routes = {
    LoginRoute: (context) => LoginScreen(),
    RegisterRoute: (context) => RegisterScreen(),
    HomeRoute: (context) => HomeScreen(),
  };
}
