import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  
  bool favorite = false;

  void onPressedFav(){
    setState(() {
      favorite = !favorite;
    });
    Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text(!favorite ? "Quitado de favoritos" : "Añadido a favoritos" ),
          )
        );
  }
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0XFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        favorite ? Icons.favorite : Icons.favorite_border,
      ),
    );
  }
}