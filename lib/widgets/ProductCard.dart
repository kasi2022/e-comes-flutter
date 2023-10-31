import 'package:e_com_git_app/modeule/product_module.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.red,
              ),
            ],
          ),
          // SizedBox(
          //   height: 130,
          //   width: 130,
          //   child: Image.asset(
          //     widget.product.image ?? '',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Text(widget.product.name ?? '')
        ],
      ),
    );
  }
}
