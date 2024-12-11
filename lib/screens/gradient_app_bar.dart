import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  const GradientAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.redAccent, Colors.orangeAccent]),
          ),
          child: SafeArea(
            child: Center(
              child: ListTile(
                title: const Text(
                  "Title",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: const Icon(Icons.search, size: 20),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Back to home'),
      )),
    );
  }
}
