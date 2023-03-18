import 'package:first_project_flutter/pages/home.dart';
import 'package:first_project_flutter/pages/login.dart';
import 'package:first_project_flutter/pages/perfil.dart';
import 'package:first_project_flutter/provider/login_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (BuildContext context) { 
        return LoginData();
       },
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/':(context) => const HomePage(),
          '/login':(context) => const LoginPage(),
          '/perfil':(context) => const PerfilPage()
        },
      ),
    );
  }
}