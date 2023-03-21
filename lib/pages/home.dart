import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.topCenter,
            child: Image.asset('assets/studying.png'),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Flutter Course', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text('Applying Knowledge', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 300),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('Go to login screen')),
            ),
          )
        ],
      )
    );
  }
}