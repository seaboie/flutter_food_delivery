import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/components/drawer/my_drawer_tile.dart';
import 'package:flutter_food_delivery/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final pad = MediaQuery.of(context).padding;

    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: EdgeInsets.only(top: pad.top + 50, bottom: pad.bottom),
        child: Column(
          children: [
            // app logo
            Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
                endIndent: 25,
                indent: 25,
                thickness: 2,
              ),
            ),

            // home list tile
            MyDrawerTile(
              text: 'H O M E',
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),

            // settings list tile
            MyDrawerTile(
              text: 'S E T T I N G S',
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),

            const Spacer(),

            // logout list tile
            MyDrawerTile(
              text: 'L O G O U T',
              icon: Icons.logout,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
