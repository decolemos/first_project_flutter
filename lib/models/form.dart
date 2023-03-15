import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {

  final _formKey  = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Inform your registration',
              labelText: 'Registration',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'please inform registration';
              }
              return null;
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'Inform your password',
              labelText: 'Password',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Incorrect or empty password';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}