import 'package:flutter/cupertino.dart';
import 'package:lab/Widgets/productWidget.dart';
import 'package:lab/models/product.dart';

class Bodywidget extends StatelessWidget {
  Bodywidget({super.key});
  final List<Product> products = [
    Product(id: "Pd001", name: "Ô tô", price: 1000, description: "1111", image: 'assets/images/images.jpg'),
    Product(id: "Pd002", name: "Xe máy", price: 500, description: "1111", image: 'assets/images/images.jpg'),
    Product(id: "Pd003", name: "Xe đạp", price: 100, description: "1111", image: 'assets/images/images.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: products.map((p) => productWidget(product: p)).toList(),
    );
  }
}
