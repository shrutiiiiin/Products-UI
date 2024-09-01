import 'package:flutter/material.dart';
import 'package:test_1/products/product_details.dart';
import 'package:test_1/widgets/prductItem.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
          toolbarHeight: 110,
          backgroundColor: const Color(0xFFF9F9F9),
          title: const Padding(
            padding: EdgeInsets.only(left: 12),
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
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      color: Colors.black26),
                )
              ],
            ),
          )),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductDetails()));
            },
            child: const ProdItem(),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Bag'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFDB3022),
        unselectedItemColor:
            Colors.black26, // Set unselected item color to white
        backgroundColor: Colors.black,
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
