// ignore_for_file: avoid_print

import 'package:first_project_flutter/provider/login_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {

  final _formKey  = GlobalKey<FormState>();

  String user = '';
  String password = '';

  void printUser() {
    print('E-mail: $user');
    print('Passwaord: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Inform your user',
              labelText: 'User',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'please inform user';
              }
              return null;
            },
            onSaved: (txt) {
              setState(() {
                user = txt!;
              });
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
            onSaved: (txt) {
              setState(() {
                password = txt!;
              });
            },
          ),
          const Padding(padding: EdgeInsets.all(40)),
          ElevatedButton(
            onPressed: (){
              if (_formKey.currentState!.validate()) {
                _formKey.currentState?.save();
                // printUser();
                Provider.of<LoginData>(context, listen: false).saveUser(user, password);
                Navigator.pushNamed(context, '/profile');
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}

