import 'package:flutter/material.dart';
import 'screens/gradient_app_bar.dart';
import 'screens/bottom_sheet.dart';
import 'screens/reorderable_list_view.dart';
import 'screens/checkbox_list_tile.dart';
import 'screens/circle_avatar.dart';
import 'screens/cupertino_context_menu.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeAppp(),
        '/GradientAppBar': (context) => const GradientAppBar(),
        '/BottomSheetExample': (context) => const BottomSheetExample(),
        '/ReorderableListView': (context) => const ReorderableListExample(),
        '/CheckboxListTile': (context) => const CheckboxListTileExample(),
        '/CircleAvatar': (context) => const CircleAvatarExample(),
        '/CupertinoContextMenu': (context) =>
            const CupertinoContextMenuExample(),
      },
    );
  }
}

class HomeAppp extends StatelessWidget {
  const HomeAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Best Flutter Widgets EVER!'),
      ),
      body: Container(
        color: Colors.black12,
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/GradientAppBar');
                },
                child: const Text('Gradient App Bar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/BottomSheetExample');
                },
                child: const Text('Bottom Sheet'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ReorderableListView');
                },
                child: const Text('Reorderable List View'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/CheckboxListTile');
                },
                child: const Text('Checkbox List Tile'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/CircleAvatar');
                },
                child: const Text('Circle Avatar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/CupertinoContextMenu');
                },
                child: const Text('Cupertino Context Menu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
