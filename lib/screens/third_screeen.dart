import 'package:flutter/material.dart';
import 'package:learning/widgets/dawer.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        actions: [],
        title: Text('Third Screen title'),
      ),
      body: Center(
        child: Text('Third Screen'),
      ),
    );
  }
}
