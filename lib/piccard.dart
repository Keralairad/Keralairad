import 'package:flutter/material.dart';

class PicCard extends StatelessWidget {
  // const PicCard({Key? key}) : super(key: key);
  final String image;
  PicCard({required this.image});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image(image: AssetImage(image)),
    );
  }
}
