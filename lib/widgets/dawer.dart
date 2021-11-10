import 'package:flutter/material.dart';
import 'package:learning/widgets/drawer_items.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor, //  haka taacidi lel theme deyali
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text('rabahham01@gmail.com'),
              accountName: Text('Rabah Ham'),
              currentAccountPicture: Image.asset('assets/images/IMG-7632.jpg'),
            ),
            Divider(
              color: Colors.white,
            ),
            myDrawerItems(),
          ],
        ),
      ),
    );
  }
}
