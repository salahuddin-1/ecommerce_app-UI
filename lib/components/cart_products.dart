import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "assets/images/clothes/blazer1.jpeg",
      "price": "50",
      "size": "M",
      "color": "Black",
      "quantity": "1",
    },
    {
      "name": "Shoes",
      "picture": "assets/images/clothes/hills1.jpeg",
      "price": "50",
      "size": "7",
      "color": "Red",
      "quantity": "1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_product_name: products_on_the_cart[index]['name'],
            cart_product_picture: products_on_the_cart[index]["picture"],
            cart_product_price: products_on_the_cart[index]["price"],
            cart_product_size: products_on_the_cart[index]["size"],
            cart_product_color: products_on_the_cart[index]["color"],
            cart_product_qty: products_on_the_cart[index]["quantity"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_qty;

  Single_cart_product({
    this.cart_product_name,
    this.cart_product_picture,
    this.cart_product_price,
    this.cart_product_size,
    this.cart_product_color,
    this.cart_product_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(       
      child: ListTile(
        
// ----------- LEADING SECTION ------     
        leading: Image.asset(cart_product_picture),


// ----------- TRAILING SECTION ------
        trailing: 
          FittedBox(
            fit: BoxFit.fill,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_drop_up), 
                  onPressed: () {},
                  iconSize: 55.0,
                  ),

                Text(
                cart_product_qty,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),),


                IconButton(
                  icon: Icon(Icons.arrow_drop_down), 
                  onPressed: () {},
                  iconSize: 55.0,              
                  ),

              ],),
          ),
                              
                            

// ----------- TITLE SECTION ------
        title: Text(cart_product_name),

// ----------- SUBTITLE SECTION ------
        subtitle: Column(children: <Widget>[

          

//          Row inside column
          Row(
            children: <Widget>[

// -----------This section for product size ----------              
              Padding(
                child: Text("Size:"),
                padding: EdgeInsets.all(8.0),
                ),
              
              Padding(
                child: Text(cart_product_size, style: TextStyle(fontWeight: FontWeight.bold),),
                padding: EdgeInsets.all(0.0),
                ),

//------------This section for product color --------
             Padding(
                child: Text("Color:"),
                padding: EdgeInsets.fromLTRB(22.0, 8.0, 8.0, 8.0),
                ),

              Padding(
                child: Text(cart_product_color, style: TextStyle(fontWeight: FontWeight.bold),),
                padding: EdgeInsets.all(0.0),
                ),                                     
            ],
          ),

// ----------- This section is for price -----------
              Container(
                padding: EdgeInsets.only(left: 8.0),
                alignment: Alignment.topLeft,
                child:
                Text(
                  '\$${cart_product_price}',
                   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
              ),

              
        ]),
      ),
    );
  }
}
