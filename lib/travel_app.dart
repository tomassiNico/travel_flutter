import 'package:flutter/material.dart';
import 'home_travel.dart';
import 'search_travel.dart';
import 'profile_travel.dart';

class TravelApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TravelApp();
  }
}

class _TravelApp extends State<TravelApp>{

  int indexTap = 0;
  
  final List<Widget> widgetsChildren = [
    HomeTravel(),
    SearchTravel(),
    ProfileTravel()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
            currentIndex: indexTap,
            onTap: onTapTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("")
              ),
            ]
          )
        ),
    );
  }
}