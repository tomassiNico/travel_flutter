import 'package:flutter/material.dart';
import 'card_imageList.dart';
import 'gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(title: "Popular"),
        CardImageList(),
      ],
    );
  }
}