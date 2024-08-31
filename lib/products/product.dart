import 'package:flutter/material.dart';
import 'package:test_1/widgets/prductItem.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
            toolbarHeight: 110,
            backgroundColor: Color(0xFFF9F9F9),
            title: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Products',
                    style: TextStyle(
                        fontSize: 38,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Super summer sale',
                    style: TextStyle(fontSize: 14, fontFamily: 'Lato'),
                  )
                ],
              ),
            )),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ProdItem();
          },
        ));
  }
}
