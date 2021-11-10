import 'package:flutter/material.dart';
import 'package:learning/widgets/dawer.dart';

class ScondScreen extends StatelessWidget {
  const ScondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        actions: [],
        title: Text('Scond Screen title'),
      ),
      body: Center(
        child: Text('Scond Screen'),
      ),
    );
  }
}
