import 'package:flutter/material.dart';
import 'package:spending_pad/view/utils/colors.dart';

class DrawerItens extends StatelessWidget {
  const DrawerItens({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}