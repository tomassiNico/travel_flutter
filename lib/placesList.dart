import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List places = [
      {
        'name': 'Monte Fitz Roy',
        'image': 'assets/img/chalten4.jpg'
      },
      {
        'name': 'Laguna los Tres',
        'image': 'assets/img/chalten1.jpg'
      },
      {
        'name': 'Laguna Sucia',
        'image': 'assets/img/chalten2.jpg'
      },
      {
        'name': 'Glaciar Piedras Blancas',
        'image': 'assets/img/chalten3.jpg'
      },
    ];

    return ListView.separated(
      padding: EdgeInsets.all(8),
      itemCount: places.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Container(
            width: 80,
            height: 800,
            
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(places[index]['image'])
              ),
            ),
          ),

          title: Text(places[index]['name']),

          trailing: Icon(
            Icons.thumb_up,
            color: Colors.limeAccent
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => Divider(),
    );
  }
}