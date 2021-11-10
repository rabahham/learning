import 'package:flutter/material.dart';
import 'package:learning/screens/home_screen.dart';
import 'package:learning/screens/scond_screen.dart';
import 'package:learning/screens/third_screeen.dart';

class myDrawerItems extends StatelessWidget {
  const myDrawerItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Home Screen'),
            onTap: () {
              // Navigator.of(context)      // hadi fe tari9a 9dema ta3 home
              //     .push(MaterialPageRoute(builder: (BuildContext context) {
              //   return HomeScreen();
              // }));
              Navigator.of(context).pushNamed('/');
            },
          ), // dele ta3 card
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Second Screen'),
            onTap: () {
              Navigator.of(context).pushNamed('/second');
            },
          ), // dele ta3 card
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('third Screen'),
            onTap: () {
              Navigator.of(context).pushNamed('/third');
            },
          ), // dele ta3 card
        ),
      ],
    );
  }
}
