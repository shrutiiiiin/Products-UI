import 'package:flutter/material.dart';
import 'package:test_1/widgets/prductItem.dart';

class ProductImg extends StatelessWidget {
  ProductImg({super.key});
  final List<String> photo = [
    'assets/images/img1.png',
    'assets/images/image 2.png',
    'assets/images/image 3.png',
    'assets/images/image 4.png',
    'assets/images/img1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ProdItem(imagePath: photo[index]);
    });
  }
}
