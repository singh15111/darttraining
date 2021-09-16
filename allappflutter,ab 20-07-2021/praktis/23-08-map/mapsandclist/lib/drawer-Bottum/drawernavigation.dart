import 'package:flutter/material.dart';
import 'package:mapsandclist/drawer-Bottum/mampsandlist.dart';

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ...DrawerOption.drawelist.map((e) => ListTile(
                title: Text(
                  e.title,
                ),
                trailing: e.icon,
                tileColor: e.color,
                onTap: () {
                  
                },
              ))
        ],
      ),
    );
  }
}
