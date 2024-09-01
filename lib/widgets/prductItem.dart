import 'package:flutter/material.dart';

class ProdItem extends StatelessWidget {
  const ProdItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(
              255, 255, 255, 1), // White background for the whole container
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ), // Border radius for the whole container
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              spreadRadius: 0.5,
              blurRadius: 2,
              offset: const Offset(0, 1), // Shadow position
            ),
          ],
        ),
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
                      decoration: const BoxDecoration(
                        color: Color(0xFFF9F9F9),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                    ),
                    Positioned.fill(
                        child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                      child: Image.asset('assets/images/image 2.png',
                          fit: BoxFit.cover),
                    )),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        width: 54,
                        height: 23,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            '-20 % off',
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  // Background Container
                  Container(
                    decoration: BoxDecoration(
                      color: Colors
                          .green[100], // Background color for illustration
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  // Text overlay
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                (index) {
                                  return Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                    size: 20,
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '(10)',
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          'Dorothy Perkins',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Evening Dress',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '15\$',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  color: Colors.black26,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '10\$',
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  color: Color(0xFFDB3022),
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
