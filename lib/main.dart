import 'package:flutter/material.dart';
import 'screens/screens.dart';

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
        '/ReorderableList': (context) => const ReorderableListExample(),
        '/CheckboxListTile': (context) => const CheckboxListTileExample(),
        '/CircleAvatar': (context) => const CircleAvatarExample(),
        '/CupContextMenu': (context) => const CupertinoContextMenuExample(),
        '/AnimatedPadding': (context) => const AnimatedPaddingExample(),
      },
    );
  }
}

class BestFlutterWidget {
  final String routes;
  final String name;

  BestFlutterWidget({required this.name, required this.routes});
}

final List<BestFlutterWidget> _widgets = [
  BestFlutterWidget(routes: '/GradientAppBar', name: 'Gradient App Bar'),
  BestFlutterWidget(routes: '/BottomSheetExample', name: 'Bottom Sheet'),
  BestFlutterWidget(routes: '/ReorderableList', name: 'Reorderable List View'),
  BestFlutterWidget(routes: '/CheckboxListTile', name: 'Checkbox List Tile'),
  BestFlutterWidget(routes: '/CircleAvatar', name: 'Circle Avatar'),
  BestFlutterWidget(routes: '/CupContextMenu', name: 'Cupertino Context Menu'),
  BestFlutterWidget(routes: '/AnimatedPadding', name: 'Animated Padding'),
];

class HomeAppp extends StatelessWidget {
  const HomeAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Best Flutter Widgets EVER!'),
      ),
      body: ListView.builder(
        itemCount: _widgets.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_widgets[index].name),
            onTap: () {
              Navigator.pushNamed(context, _widgets[index].routes);
            },
            trailing: Icon(Icons.arrow_forward),
          );
        },
      ),
    );
  }
}
