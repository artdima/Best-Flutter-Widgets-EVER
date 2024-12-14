import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetExample extends StatelessWidget {
  const CupertinoActionSheetExample({super.key});

  void _showCupertinoMenu(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text("Select Option"),
        message: const Text("Choose an action"),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context); // Закрыть меню
              print("Option 1 selected");
            },
            child: const Text("Option 1"),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              print("Option 2 selected");
            },
            child: const Text("Option 2"),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              print("Option 3 selected");
            },
            child: const Text("Option 3"),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          isDefaultAction: true,
          child: const Text("Cancel"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cupertino Popup Menu Example")),
      body: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          child: const Text(
            "Show Menu",
            style: TextStyle(
              color: CupertinoColors.white, // Цвет текста
              fontSize: 18, // Размер текста
              fontWeight: FontWeight.normal, // Толщина текста
            ),
          ),
          onPressed: () => _showCupertinoMenu(context),
        ),
      ),
    );
  }
}
