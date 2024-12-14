import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
      ),
      body: Center(
        child: Card(
          elevation: 20,
          color: Colors.amberAccent,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 8),
                const Text('This is Card'),
                TextButton(
                  onPressed: () {},
                  child: const Text("Press"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
