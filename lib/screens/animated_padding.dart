import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

//AnimatedPadding — это виджет во Flutter, который позволяет анимировать
//изменение отступов (padding) вокруг дочернего виджета. Он полезен, если
//нужно плавно изменять расстояние между виджетами в зависимости от состояния приложения.
class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Padding Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  padValue = padValue == 0 ? 100.0 : 0.0;
                });
              },
              child: const Text('Change padding'),
            ),
            Text('Paddin value $padValue'),
            const SizedBox(height: 20),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
