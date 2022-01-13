import 'package:flutter/material.dart';
import 'package:irad_kerala_web/images.dart';
import 'package:irad_kerala_web/piccard.dart';

class PicSection extends StatelessWidget {
  //const PicSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 3, shrinkWrap: true, children: [
      PicCard(
        image: pic1,
      ),
      PicCard(
        image: pic6,
      ),
      PicCard(
        image: pic3,
      ),
      PicCard(
        image: pic4,
      ),
      PicCard(
        image: pic5,
      ),
      PicCard(
        image: pic2,
      ),
      PicCard(
        image: pic7,
      ),
      PicCard(
        image: pic8,
      ),
      PicCard(
        image: pic9,
      ),
      PicCard(
        image: pic10,
      ),
      PicCard(
        image: pic11,
      ),
      PicCard(
        image: pic12,
      ),
      PicCard(
        image: pic13,
      ),
    ]);
  }
}
