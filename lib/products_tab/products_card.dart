import 'package:adidas_shop/product/product.dart';
import 'package:flutter/material.dart';

Widget starsContainer(Widget icon) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: icon
  );
}

Widget tag(Widget price) {
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    child: price,
  );
}

Widget imageContainer(Widget img) {
  return Padding(
    padding: EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
        border: Border.all(
        color: Colors.blueGrey,
        width: 2,
      ),
      boxShadow: [
        BoxShadow(
          spreadRadius: 0.1,
          color: Colors.blueGrey,
          blurRadius: 0.1
        )
      ]
    ),
    child: img,
  ));
}

List<Widget> rateStars(double rate) {
  return List.generate(5, (i) => i).map((i) {
    i = i + 1;
    if(i <= rate){
      return starsContainer(Icon(Icons.star, color: Colors.amber,));
    } else if(i > rate && i < rate + 1) {
      return starsContainer(Icon(Icons.star_half, color: Colors.amber,));
    }
    else {
      return starsContainer(Icon(Icons.star_border, color: Colors.white,));
    }
  }).toList();
}

class ProductsCard extends StatefulWidget {
  String image;
  double rate;
  double price;
  String name;
  ProductsCard(this.image, this.rate, this.price, this.name);
  _ProductsCard createState() => _ProductsCard(this.image, this.rate, this.price, this.name);
}

class _ProductsCard extends State<ProductsCard> {
  
  String image;
  double rate;
  double price;
  String name;
  _ProductsCard(this.image, this.rate, this.price, this.name);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Product(image, name)));
        },
        child:Card(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.white],
            )
          ),
          width: double.infinity,
              child: Stack(
                fit: StackFit.loose,
                children: <Widget>[
                  imageContainer(Image.asset(
                      image,
                      width: 100,
                      height: 100,
                  )),
                  Positioned(
                    child:Row(children: rateStars(rate)),
                    right: 20,
                    top: 20,
                  ),
                  Positioned(
                    child: tag(Text("R\$ $price", style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.amber
                    ))),
                    bottom: 20,
                    right: 20,
                  ),
                  Positioned(
                    top: 20,
                    left: 120,
                    child: tag(Text(name, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.amber
                    ))),
                  )
                ],
              )
        )
    ));;
  }
}