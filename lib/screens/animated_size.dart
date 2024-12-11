import 'package:flutter/material.dart';

class AnimatedSizeExample extends StatefulWidget {
  const AnimatedSizeExample({super.key});

  @override
  State<AnimatedSizeExample> createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample> {
  double _size = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Size'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _size = _size == 100 ? 200 : 100;
          });
        },
        child: AnimatedSize(
          duration: const Duration(seconds: 1),
          child: FlutterLogo(
            size: _size,
          ),
        ),
      ),
    );
  }
}
