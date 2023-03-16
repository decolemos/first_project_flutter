import 'package:flutter/material.dart';
import '../models/form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                width: double.infinity,
                height: 150,
                child: Image.asset('assets/login.png'),
              ),
            ),
              Container(
              padding: const EdgeInsets.all(40),
              child: const FormLogin(),
            ),
          ],
        ),
      ),
    );
  }
}