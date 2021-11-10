import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learning/widgets/dawer.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> myList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        actions: [],
        title: Text('Home Screen title'),
      ),
      body: Center(
        child: myList.length > 0
            ? Container(
                width: MediaQuery.of(context).size.width *
                    0.9, // responsive t9olo di kale chacha wla 90%
                child: ListView.builder(
                  itemCount: myList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildMyList(myList[index]);
                  },
                ),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.data_saver_on_rounded),
        onPressed: () => _addPhoto(),
      ),
    );
  }

  Widget _buildMyList(String img) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      // width: 300,
      child: Card(
        elevation: 5,
        child: Image.network(img),
      ),
    );
  }

  _addPhoto() async {
    final num = Random().nextInt(1000);
    final responcse = await http
        .get(Uri.parse('http://jsonplaceholder.typicode.com/photos/$num'));
    final parsedResponse = jsonDecode(responcse.body);

    setState(() {
      myList.add(parsedResponse['url']);
    });
    print(myList.length);
    print(5);

    // print('start'); // hadi kifach tekhedeme future
    // Future.delayed(Duration(seconds: 10), () {
    //   print('it\'s me afeter 10 second');
    //   print(1);
    // });
  }

  // jsonDecode(String body) {

  // }
}
