import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// My own imports
import 'package:ecommerce_app/components/horizantal_listview.dart';
import 'package:ecommerce_app/components/Products.dart';
import './cart.dart';

class HomePage extends StatefulWidget {
    @override
    _HomePageState createState() => _HomePageState();
  }
  
  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
    
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/c1.jpg'),          
          AssetImage('assets/images/m2.jpg'),
          AssetImage('assets/images/w1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/w4.jpeg'),
        ],
        autoplay: false,
//        animationCurve: Curves.slowMiddle,
//        autoplayDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
      ),
    );

      return Scaffold(
        body: ListView(
          children: <Widget>[

//          image carousel begins here  
            image_carousel,

//          Padding
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Categories'),
            ),

//          Horizontal listview begins here
            HorizontalList(),

//          Padding widgets
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Recent products'),
              ),

//          gridview
            Container(
              height: 320.0,
              child: Products(),
            ),
          ],
        ),
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Fashapp'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            // Search icon button
            IconButton(
              icon: Icon(Icons.search, color: Colors.white), 
              onPressed: () {},
              ),

            // Cart icon button
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white), 
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Cart())),
              ),

          ],
        ),
        drawer : Drawer(
          child: ListView(
            children: <Widget> [
              UserAccountsDrawerHeader(
                accountName: Text('Salahuddin Shaikh'), 
                accountEmail: Text('salahudinshaikh16@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
               ),
               InkWell(
                child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
                onTap: () {} ,
              ),),

              InkWell(
                child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
                onTap: () {} ,
              ),),

              InkWell(
                child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
                onTap: () {} ,
              ),),

              InkWell(
                child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(Icons.shopping_cart),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=> Cart())) ,
              ),),

              InkWell(
                child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
                onTap: () {} ,
              ),),

              Divider(),

              InkWell(
                child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () {} ,
              ),),

              InkWell(
                child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
                onTap: () {} ,
              ),),



            ]
          )
        ),


        
      );
    }
  }
