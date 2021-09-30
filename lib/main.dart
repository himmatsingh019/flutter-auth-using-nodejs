import 'package:flutter/material.dart';
import 'package:flutter_auth_using_nodejs/services/local_storage-provider.dart';
import 'package:flutter_auth_using_nodejs/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.LoginRoute,
    );
  }
}
