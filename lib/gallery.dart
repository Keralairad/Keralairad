import 'package:flutter/material.dart';
import 'package:irad_kerala_web/gallerytitle.dart';
import 'package:irad_kerala_web/header.dart';
import 'package:irad_kerala_web/picsection.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(children: [Header(), GalleryTitle(), PicSection()]),
    );
  }
}
