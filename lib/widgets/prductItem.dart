import 'package:flutter/material.dart';

class ProdItem extends StatelessWidget {
  const ProdItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 120,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Positioned.fill(
                      child: Image.asset('assets/images/img1.png',
                          fit: BoxFit.cover)),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      width: 54,
                      height: 23,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          '20 % off',
                          style: TextStyle(fontFamily: 'Lato', fontSize: 12),
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 4),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                // Background Container
                Container(
                  decoration: BoxDecoration(
                    color:
                        Colors.green[100], // Background color for illustration
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // Text overlay
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Product Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'This is a description of the product. It provides more details and information.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
