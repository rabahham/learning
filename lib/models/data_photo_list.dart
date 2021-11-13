import 'package:flutter/material.dart';

class DataPhotoList extends StatelessWidget {
  final data_photos;
  DataPhotoList({this.data_photos});

  @override
  Widget build(BuildContext context) {
    // final myPhotos;
    return new GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: data_photos.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 400,
          height: 400,
          child: Image.network(data_photos[index].url),
        );
      },
    );
  }
}
