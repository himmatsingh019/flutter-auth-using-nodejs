import 'package:flutter/material.dart';
import 'package:flutter_auth_using_nodejs/provider/login_provider.dart';
import 'package:flutter_auth_using_nodejs/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginProvider>(
      create: (context) => LoginProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
        initialRoute: AppRoutes.LoginRoute,
      ),
    );
  }
}
