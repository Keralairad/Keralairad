import 'package:flutter/material.dart';

class PicSection extends StatelessWidget {
  const PicSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2, children: [PicCard()]);
  }
}
