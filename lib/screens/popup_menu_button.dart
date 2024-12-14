import 'package:flutter/material.dart';

class PopupMenuButtonExample extends StatefulWidget {
  const PopupMenuButtonExample({super.key});

  @override
  State<PopupMenuButtonExample> createState() => _PopupMenuButtonExampleState();
}

class _PopupMenuButtonExampleState extends State<PopupMenuButtonExample> {
  String title = 'First item';
  String item1 = 'First item';
  String item2 = 'Second item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popup Menu Button"),
      ),
      body: ListTile(
        title: Text(title),
        trailing: PopupMenuButton(
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text(item1),
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text(item2),
                    onTap: () {},
                  ),
                ]),
      ),
    );
  }
}
