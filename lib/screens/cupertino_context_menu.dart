import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CupertinoContextMenuExample extends StatelessWidget {
  const CupertinoContextMenuExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Context Menu'),
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CupertinoContextMenu(
            actions: [
              CupertinoContextMenuAction(
                child: const Text('Action One'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action Two'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
            child: SvgPicture.network(
              'https://upload.wikimedia.org/wikipedia/commons/8/88/YouTube_Premium_logo_2024.svg',
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
