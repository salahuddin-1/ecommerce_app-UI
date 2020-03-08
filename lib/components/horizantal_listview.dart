import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0,      
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/cats/tshirt.png' ,
            image_caption: 'tshirt' ,
          ),

          Category(
            image_location: 'assets/images/cats/dress.png' ,
            image_caption: 'dress' ,
          ),

          Category(
            image_location: 'assets/images/cats/formal.png' ,
            image_caption: 'formal' ,
          ),

          Category(
            image_location: 'assets/images/cats/jeans.png' ,
            image_caption: 'jeans' ,
          ),

          Category(
            image_location: 'assets/images/cats/shoe.png' ,
            image_caption: 'shoe' ,
          ),

          Category(
            image_location: 'assets/images/cats/accessories.png' ,
            image_caption: 'accessories' ,
          ),
         

        ]
      ),
      
    );
  }
}

class Category extends StatelessWidget {

  final String image_location;
  final String image_caption;

  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ) ,
          )
      ),
    );
  }
}