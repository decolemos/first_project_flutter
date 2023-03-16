import 'package:first_project_flutter/pages/home.dart';
import 'package:first_project_flutter/pages/login.dart';
import 'package:first_project_flutter/pages/perfil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
        '/login':(context) => const LoginPage(),
        '/perfil':(context) => const PerfilPage()
      },
    );
  }
}