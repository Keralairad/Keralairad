import 'package:flutter/material.dart';
import 'package:irad_kerala_web/gallerytitle.dart';
import 'package:irad_kerala_web/header.dart';
import 'package:irad_kerala_web/picsection.dart';

class Gallery extends StatelessWidget {
  //const Gallery({Key? key}) : super(key: key);
  int _selectedItems = 0;
  int header = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        Header(),
        thickDivider,
        GalleryTitle(),
        thickDivider,
        PicSection()
      ]),
    );
  }

  Widget thickDivider = Divider(
    height: 20,
    thickness: 3,
    indent: 20,
    endIndent: 20,
    color: Colors.grey[600],
  );
}
