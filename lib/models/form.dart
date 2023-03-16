import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {

  final _formKey  = GlobalKey<FormState>();

  // FocusNode inputNode = FocusNode();

  // void openKeyboard() {
  //   FocusScope.of(context).requestFocus(inputNode);
  // }

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            // focusNode: inputNode,
            // autofocus: true,
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
            onSaved: (txt) {
              setState(() {
                email = txt!;
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
                Navigator.pushNamed(context, '/perfil');
              }
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}