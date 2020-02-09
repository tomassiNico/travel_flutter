import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  Review({this.username, this.detail ,this.commnet , this.pathImg});

  final String pathImg;
  final String username;
  final String detail; 
  final String commnet; 

  @override
  Widget build(BuildContext context) {

    final description = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0
      ),
      width: 250,
      child: Text(
        commnet,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
        style: TextStyle(
          fontFamily: "Lato",
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        detail,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato"
        ),
      )
    );

    final user = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        username,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato"
        ),
      )
    );

    /* final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

      ],
    ); */

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImg)
        )
      ),
    );

    final review = Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            photo,
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            user,
            userInfo,
            description
          ],
        )
      ],
    );

    
    
    return review;
  }
}