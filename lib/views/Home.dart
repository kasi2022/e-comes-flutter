import 'package:e_com_git_app/modeule/myprodect.dart';
import 'package:e_com_git_app/widgets/ProductCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index)
          
           {
            final allProduct = Myproducts.allProduct[index];
            return ProductCard(product: allProduct);
          }),
    );
  }
}
