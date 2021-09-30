import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_auth_using_nodejs/routes/routes.dart';
import 'package:flutter_auth_using_nodejs/services/auth_service.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset('assets/png/signup.png'),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black87),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                      label: Text('Enter your name'),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black87),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                      label: Text('Enter your email'),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black87),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                      label: Text('Enter your password'),
                    ),
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () async {
                      final data = await AuthService().register(
                        nameController.text,
                        emailController.text,
                        passwordController.text,
                      );
                      if (data['success']) {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRoutes.HomeRoute,
                          (Route route) => false,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(data['msg']),
                          ),
                        );
                      }
                    },
                    child: Center(
                      child: Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an account?',
                        style: TextStyle(fontSize: 16),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.LoginRoute),
                        child: Text(
                          ' Login',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
