import 'package:best_flutter_widgets_ever/screens/alert_dialog.dart';
import 'package:best_flutter_widgets_ever/screens/card.dart';
import 'package:best_flutter_widgets_ever/screens/cupertino_action_sheet.dart';
import 'package:best_flutter_widgets_ever/screens/date_picker.dart';
import 'package:best_flutter_widgets_ever/screens/date_picker_cupertino.dart';
import 'package:best_flutter_widgets_ever/screens/dismissible.dart';
import 'package:best_flutter_widgets_ever/screens/drawer.dart';
import 'package:best_flutter_widgets_ever/screens/popup_menu_button.dart';
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
        '/AnimatedPositioned': (context) => const AnimatedPositionedExample(),
        '/AnimatedSize': (context) => const AnimatedSizeExample(),
        '/SliverAppBar': (context) => const SliverAppBarExample(),
        '/AlertDialog': (context) => const AlertDialogExample(),
        '/Card': (context) => const CardExample(),
        '/DatePicker': (context) => const DatePickerExample(),
        '/DatePickerCup': (context) => const DatePickerCupertinoExample(),
        '/Dismissible': (context) => const DismissibleExample(),
        '/Drawer': (context) => const DrawerExample(),
        '/PopupMenuButton': (context) => const PopupMenuButtonExample(),
        '/CupertinoActionSheet': (context) =>
            const CupertinoActionSheetExample(),
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
  BestFlutterWidget(routes: '/AnimatedPositioned', name: 'Animated Positioned'),
  BestFlutterWidget(routes: '/AnimatedSize', name: 'Animated Size'),
  BestFlutterWidget(routes: '/SliverAppBar', name: 'Sliver AppBar'),
  BestFlutterWidget(routes: '/AlertDialog', name: 'Alert Dialog'),
  BestFlutterWidget(routes: '/Card', name: 'Card'),
  BestFlutterWidget(routes: '/DatePicker', name: 'Dat Picker'),
  BestFlutterWidget(routes: '/DatePickerCup', name: 'Date Picker Cupertino'),
  BestFlutterWidget(routes: '/Dismissible', name: 'Dismissible'),
  BestFlutterWidget(routes: '/Drawer', name: 'Drawer'),
  BestFlutterWidget(routes: '/PopupMenuButton', name: 'PopupMenuButton'),
  BestFlutterWidget(
      routes: '/CupertinoActionSheet', name: 'CupertinoActionSheet'),
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
            trailing: const Icon(Icons.arrow_forward),
          );
        },
      ),
    );
  }
}
