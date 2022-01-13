import 'package:flutter/material.dart';

class PicCard extends StatelessWidget {
  // const PicCard({Key? key}) : super(key: key);
  final String image;
  PicCard({required this.image});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
//  Image(
//         image: AssetImage(image),
//         fit: BoxFit.cover,
//       ),