import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ),
            onPressed: null,
          ),
        ],
        title: Center(
            child: Text(
          'Short Dress',
          style: TextStyle(
              fontFamily: 'Lato', fontSize: 18, fontWeight: FontWeight.w600),
        )),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 300,
              width: double.infinity,
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
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/imagecut.png'))),
                  ),
                  const Positioned(
                      top: 0,
                      left: 23,
                      child: Image(
                          image: AssetImage('assets/images/heart button.png'))),
                ],
              )),
        ],
      ),
    );
  }
}
