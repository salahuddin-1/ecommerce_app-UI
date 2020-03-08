import 'package:flutter/material.dart';

// My imports
import 'package:ecommerce_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  
  var products_list = [
    {
      "name": "Blazer",
      "picture": "assets/images/clothes/blazer1.jpeg",
      "old_price": "120",
      "price": "50",
    },

    {
      "name": "Red Dress",
      "picture": "assets/images/clothes/dress1.jpeg",
      "old_price": "100",
      "price": "50",
    },

     {
      "name": "Heels",
      "picture": "assets/images/clothes/hills1.jpeg",
      "old_price": "100",
      "price": "50",
    },

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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: products_list[index]['name'],
          prod_picture: products_list[index]['picture'],
          prod_old_price: products_list[index]['old_price'],
          prod_price: products_list[index]['price'],
        );
      },
    );
      
   
  }
}

class Single_prod extends StatelessWidget {

  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
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
                      
                      
                    ),),

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