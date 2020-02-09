import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final images = ['assets/img/chalten2.jpg', 'assets/img/chalten1.jpg', 'assets/img/chalten3.jpg', 'assets/img/chalten4.jpg'];

    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: images.map((img) => CardImage(pathImage: img)).toList()
      ),
    );
  }
}