import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Container(
        child: Column(
          children:[Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
          ), 
          SizedBox(height: kDefaultPaddin),
          Column(children:[
            Row(children:[
              Column(children:[
                SizedBox(height: 200),
                    Text("Price\n"),
                    Text(
                       "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
              ]),
                  

              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    height: 300,
                  ),
                ),
              )
            ],
          )
        ]),
     ]),
    ));
  }
}
