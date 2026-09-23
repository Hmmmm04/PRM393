import 'package:flutter/material.dart';
import 'package:lab/Widgets/productWidget.dart';
import 'package:lab/models/product.dart';

class productDetailPage extends StatelessWidget {
  final Product product;
  const productDetailPage({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: productWidget(product: product),
    );
  }
}
