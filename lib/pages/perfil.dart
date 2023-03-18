import 'package:first_project_flutter/provider/login_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {

    final loginData = Provider.of<LoginData>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                height: 150,
                child: Image.asset('assets/login.png'),
              ),
            ),
            Text(loginData.email),
            Text(loginData.password)
          ],
        ),
      ),
    );
  }
}