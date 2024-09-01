import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(Icons.arrow_back_ios), Icon(Icons.share)],
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/imagedress.png'))),
            ),
          ),
          Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/imagecut.png'))),
                  ),
                  const Positioned(
                      top: 0, left: 0, child: Icon(Icons.favorite)),
                ],
              )),
        ],
      ),
    );
  }
}
