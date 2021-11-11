// class DataPhoto {             // https://app.quicktype.io/  hada siete nhetelo json yemedli le class
//   final int albumId;
//   final int id;
//   final String title;
//   final String url;
//   final String thumbnailUrl;

//   DataPhoto({this.albumId, this.id,this.title, this.url, this.thumbnailUrl});
// }

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

DataPhoto dataPhotoFromJson(String str) => DataPhoto.fromJson(json.decode(str));

String dataPhotoToJson(DataPhoto data) => json.encode(data.toJson());

class DataPhoto {
  DataPhoto({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  final int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  factory DataPhoto.fromJson(Map<String, dynamic> json) => DataPhoto(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
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
