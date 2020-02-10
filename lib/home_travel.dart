import 'package:flutter/material.dart';
import 'package:travel_flutter/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTravel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace(namePlace:'El Chaltén', stars: 4 , descriptionPlace: "Inmerso en la Naturaleza virgen se activan todos tus sentidos. Caminas por senderos que atraviesan bosques llenos de magia, y en cada mirador te detienes a contemplar montañas y glaciares que nunca olvidarás. Tu cuerpo se recarga de energía y aire puro. Estás en El Chaltén, donde tu espíritu se renueva para siempre."),
                ReviewList(),
              ],
            ),
            HeaderAppBar(),
          ],
        );
  }
}