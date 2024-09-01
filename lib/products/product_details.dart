import 'dart:math';

import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/imagedress.png',
      'assets/images/imagedress.png',
      'assets/images/imagedress.png',
    ];
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
          title: const Center(
              child: Text(
            'Short Dress',
            style: TextStyle(
                fontFamily: 'Lato', fontSize: 18, fontWeight: FontWeight.w600),
          )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 350,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images[index]))),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'H&M',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '\$15',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  const Text(
                    'Short Dress',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black38,
                        fontWeight: FontWeight.w300),
                  ),
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                        ),
                      ),
                      const Text(
                        '(10)',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 12,
                            color: Colors.black26,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim. ',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
