import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class CustomItem extends StatelessWidget {
  CustomItem({super.key, required this.product});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          shadowColor: Colors.grey,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$${product.price}'),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 50,
          bottom: 70,
          child: Image.network(
            product.image,
            height: 150,
          ),
        )
      ],
    );
  }
}
