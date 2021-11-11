import 'package:flutter/material.dart';
import 'package:learning/models/data_photo.dart';
import 'package:learning/models/data_photo_list.dart';
import 'package:learning/widgets/dawer.dart';

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

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
        child: FutureBuilder(
          future: fetchDataPhotos(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return snapshot.hasData
                ? DataPhotoList(data_photos: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

Future<List<DataPhoto>> fetchDataPhotos() async {
  final responcse =
      await http.get(Uri.parse('http://jsonplaceholder.typicode.com/photos'));
  final parsedResponse = responcse.body;
  return compute(parsePhoto, parsedResponse);
}

List<DataPhoto> parsePhoto(String parsedResponse) {
  final parsed = json.decode(parsedResponse).cast<Map<String, dynamic>>();
  return parsed.map<DataPhoto>((json) => DataPhoto.fromJson(json)).toList();
}
