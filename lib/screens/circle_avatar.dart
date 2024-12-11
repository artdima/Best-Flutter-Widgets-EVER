import 'package:flutter/material.dart';

class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundColor: Colors.yellow,
          radius: 55,
          backgroundImage: AssetImage('assets/icon/blue.jpg'),
          child: Text('Hello'),
        ),
      ),
    );
  }
}
