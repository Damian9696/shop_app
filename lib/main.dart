import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/product_detail_screen.dart';
import 'package:flutter_complete_guide/screens/products_overview_scren.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.green,
          fontFamily: 'Lato'),
      home: ProductsOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
      },
    );
  }
}
