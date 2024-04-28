import 'package:flutter/material.dart';
import 'package:shopping_bag_q/shoppingbag-counter.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shopping App',
      home: ShoppingPage(),
    );
  }
}