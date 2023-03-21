import 'package:first_project_flutter/provider/login_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    final loginData = Provider.of<LoginData>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
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
            Center(
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(20)),
                  Text('User: ${loginData.user}', style: const TextStyle(fontSize: 20),),
                  const Padding(padding: EdgeInsets.all(20)),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/store');
                    },
                     child: const Text('Go to Store')
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}