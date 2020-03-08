import 'package:flutter/material.dart';
//import 'package:ecommerce_app/main.dart';

//My other imports
import 'package:ecommerce_app/pages/cart.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_old_price;
  final product_detail_picture;
  final product_detail_new_price;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_picture,
    this.product_detail_old_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Cart())),
          ),
          
          // Home button         
         // IconButton(
             // icon: Icon(Icons.home, color: Colors.white),
              //onPressed: () => Navigator.of(context).push(MaterialPageRoute(
             //   builder: (context) => HomePage())),
              //),

        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                child: Image.asset(widget.product_detail_picture),
                color: Colors.white,
              ),

//              footer
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.product_detail_old_price}",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.blueGrey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text('\$${widget.product_detail_new_price}',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

// ----------- The first buttons -----------
          Row(
            children: <Widget>[
              // ----------- The size button -------------
              Expanded(
                child: MaterialButton(
                  //---ON pressing the button the following things will happen ---
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('Choose the size'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('close',
                                    style: TextStyle(color: Colors.blueAccent)),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Size')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // ----------- The color button -------------
              Expanded(
                child: MaterialButton(
                  //---ON pressing the button the following things will happen ---
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('Choose the color'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  'close',
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                              ),
                            ],
                          );
                        });
                  },

                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Color')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // ----------- The Quantity button -------------
              Expanded(
                child: MaterialButton(
                  //---ON pressing the button the following things will happen ---
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('Choose the quantity'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  'close',
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Qty')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

// ----------- The Second buttons -------------
          Row(
            children: <Widget>[
              // ----------- The Buy-Now button -------------
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy Now'),
                ),
              ),

              //------------ The shoppingcart button --------
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.red,
                  onPressed: () {}),

              //------------ The favourite button --------
              IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {}),
            ],
          ),

          Divider(),

          ListTile(
            title: Text('Product details'),
            subtitle: Text(
                'Here all the details will come eventualluy as u can see all gth deatils wl would come here the brand is nice as u can see '),
          ),

          Divider(),

          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child:
                    Text('Product name', style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child:
                    Text('Product brand', style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('Brand name will come here'),
              )
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product condition',
                    style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('Conditions will come here'),
              )
            ],
          ),

          Divider(),

          Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Similar products',
                textScaleFactor: 1.2,
              )),

          // ------- Similar products Container and calling Similar_products()
          Container(height: 360.0, child: Similar_products()),
        ],
      ),
    );
  }
}

// ------------Similar products class ------------

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var products_list = [
    {
      "name": "Pant",
      "picture": "assets/images/clothes/pants2.jpeg",
      "old_price": "100",
      "price": "50",
    },
    {
      "name": "Shoe",
      "picture": "assets/images/clothes/shoe1.jpg",
      "old_price": "100",
      "price": "50",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Similar_single_prod(
          prod_name: products_list[index]['name'],
          prod_picture: products_list[index]['picture'],
          prod_old_price: products_list[index]['old_price'],
          prod_price: products_list[index]['price'],
        );
      },
    );
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_old_price,
    this.prod_picture,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                      product_detail_new_price: prod_price,
                    ))),
            child: GridTile(
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
              footer: Container(
                height: 65.0,
                color: Colors.white70,
                child: ListTile(
                  title: Text(
                    "\$$prod_price",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  leading: Text(
                    prod_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "\$$prod_old_price",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.blueGrey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
