import 'package:flutter/material.dart';
import 'header.dart';
import 'CategoryItem.dart';
import 'ProductCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const header(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/Rectangle.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          'assets/p1.png',
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 20),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'CATEGORIES',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CategoryItem(
                                image: 'assets/c1.png',
                                name: 'Shirts',
                              ),
                              const SizedBox(width: 15),
                              CategoryItem(
                                image: 'assets/c2.png',
                                name: 'T-Shirts',
                              ),
                              const SizedBox(width: 15),
                              CategoryItem(
                                image: 'assets/c4.png',
                                name: 'Shoes',
                              ),
                              const SizedBox(width: 15),
                              CategoryItem(
                                image: 'assets/c3.png',
                                name: 'Jeans',
                              ),
                              const SizedBox(width: 15),
                              CategoryItem(
                                image: 'assets/c5.png',
                                name: 'Dresses',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'RECOMMENDED FOR YOU',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ProductCard(
                                image: 'assets/R1.png',
                                name: 'Leaf shirt',
                                price: '₹1,499',
                              ),
                              const SizedBox(width: 15),
                              ProductCard(
                                image: 'assets/R2.png',
                                name: 'Cream Jacket',
                                price: '₹1,799',
                              ),
                              const SizedBox(width: 15),
                              ProductCard(
                                image: 'assets/R3.png',
                                name: 'Denim Jacket',
                                price: '₹999',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 60),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Terms and Conditions ',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            ' Privacy Policy',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
