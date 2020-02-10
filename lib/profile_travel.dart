import 'package:flutter/material.dart';
import 'gradient_back.dart';

class ProfileTravel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(title: "Profile"),
          UserData(username: "Nicolás Tomassi", email: "leguizamon.tomassi@gmail.com", pathImage: "assets/img/luis.jpg"),
          CustomFloatingActionButton(),
        ]
      )
    );
  }
}

class CustomFloatingActionButton extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _CustomFloatingActionButton(); 
}

class _CustomFloatingActionButton extends State<CustomFloatingActionButton>{
  List buttons = [
    {
      'icon': Icons.bookmark_border,
      'pressed': false
    },
    {
      'icon': Icons.work,
      'pressed': false
    },
    {
      'icon': Icons.add,
      'pressed': false
    },
    {
      'icon': Icons.message,
      'pressed': false
    },
    {
      'icon': Icons.verified_user,
      'pressed': false
    },
  ];

  onPressedButton(int index){
    setState(() {
      buttons[index]['pressed'] = !buttons[index]['pressed'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final icons = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (var button in buttons) Container(
          margin: EdgeInsets.only(
            top: button['icon'] == Icons.add ? 0 : 5,
            left: 8
          ),

          child: FloatingActionButton(
            backgroundColor: button['pressed'] ? Colors.white70 : Colors.white38,
            onPressed: () => onPressedButton(buttons.indexOf(button)),
            mini: button['icon'] == Icons.add ? false : true,
            child: Icon(
              button['icon'],
              color: Colors.white,
            ),
          ),
        ),
      ],
    );

    return Container(
      margin: EdgeInsets.only(
        top:185,
        left: 16
      ),
      child: icons
    );
  }
}

class UserData extends StatelessWidget{
  UserData({this.username, this.email, this.pathImage});

  final String username;
  final String pathImage;
  final String email;

  @override
  Widget build(BuildContext context) {

    final userPhoto = Container(

      height: 80,
      width: 80,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 8
      ),

      child: Text(
        username,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final userEmail = Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 8
      ),

      child: Text(
        email,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 12,
          color: Colors.white60,
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        top: 100,
        left: 20
      ),

      child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  userPhoto,
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  userName,
                  userEmail,
                ],
              )
            ],
          ),
    );

    return userInfo;
  }
}