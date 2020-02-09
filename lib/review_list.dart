import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List reviews = [
      {
        'username': 'Luis',
        'detail': '1 review 5 photos', 
        'commnet': 'Este lugar es la magia por algo tengo de foto de perfil a mi en una cama en el Chalten cerca del Fitz Roy <3',
        'pathImg': 'assets/img/luis.jpg'
      },
      {
        'username': 'Pepe el poderoso',
        'detail': '9 review 2 photos', 
        'commnet': 'Hace poco tiempo estuve alli y no veo las horas de volver',
        'pathImg': 'assets/img/mmLuis.jpg'
      },
      {
        'username': 'Alguien De Algun Lado',
        'detail': '120 review 231 photos', 
        'commnet': 'Fui 9 veces y volvería infinitas veces más',
        'pathImg': 'assets/img/mouse.jpg'
      },
    ];

    final reviewsList = Column(
      children: [
        for(var review in reviews) Review(username: review['username'], detail: review['detail'], commnet: review['commnet'], pathImg: review['pathImg'])
      ]
    );

    return Container(
      margin: EdgeInsets.only(
        top:10
      ),
      child: reviewsList
    );
  }
}