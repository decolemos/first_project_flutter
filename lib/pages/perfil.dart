import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}