import 'package:flutter/material.dart';
import 'review_list.dart';
import 'button_purple.dart';

class StarContainer extends StatelessWidget {
  StarContainer({this.quantity});

  final int quantity;

  @override
  Widget build(BuildContext context){

    List<Widget> stars = new List(5);

    for(int i = 0; i < stars.length; i++){
      stars[i] = new Star(voted: (i < quantity ? true : false));
    }

    return Row(
      children: stars
      );
  }
}

class Star extends StatelessWidget {
  Star({this.voted});

  final voted;

  @override
  Widget build(BuildContext context){

    final config = {
      'color': this.voted ? Color(0XFFF2C611) : Colors.grey,
      'icon': this.voted ? Icons.star : Icons.star_border,
    };

    return Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        config['icon'],
        color: config['color'],
      ),
    );
  }
}

class DescriptionPlace extends StatelessWidget {
  DescriptionPlace({this.namePlace, this.descriptionPlace ,this.stars = 0});

  final String namePlace;
  final int stars;
  final String descriptionPlace;

  @override
  Widget build(BuildContext context){
    final title = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        new StarContainer(quantity: stars),
    ],);

    final description = Container(
          margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            descriptionPlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16.0,
              color: Color(0XFF56575A)
            )
          ),
      );


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title,
        description,
        ButtonPurple(buttonText: "Navigate"),
        ReviewList(),
      ],
    );
  }
}