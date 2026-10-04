import 'package:flutter/material.dart';
import 'package:helloworld/Product.dart';
import 'package:helloworld/ProductList.dart';
//import 'package:helloworld/ProductPage.dart';
import 'package:helloworld/loading.dart';
import 'header.dart';
import 'login.dart';
import 'home.dart';
import 'register.dart';
import 'loading.dart';
import 'api_service.dart';
import 'ProductPage.dart';

void main() {
  // ApiService().getProducts();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //body: LoadingScreen(),
        //body: HomeScreen(),
        body: ProductList(),
        //home: login(),
        //home: RegisterScreen(),
        /*body: ProductPage(
          product: Product(
            id: 1,
            title: 'Test Product',
            price: 29.99,
            //description: 'This is a test product',
            category: 'men clothing',
            image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg'),
        ),*/
      ), //
    );
  }
}
