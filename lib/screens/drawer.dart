import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "TopCosmo",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text("Каталог"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text("О компании"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text("Контакты"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text("Доставка"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text("Оплата"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text("Личный кабинет"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Center(
        child: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Text("Open drawer"),
          ),
        ),
      ),
    );
  }
}
