import 'package:flutter/material.dart';
import 'package:lab/Screens/product_detail_page.dart';
import 'package:lab/Widgets/myWidget.dart';
import 'package:lab/models/product.dart';

class productWidget extends StatelessWidget {
  final Product product;
  const productWidget({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.solid, color: Colors.redAccent),
            color: Colors.greenAccent,
          ),
          width: 300,
          height: 600,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: 300,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset(
                          '${product.image}',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => productDetailPage(product: product),
                              ),
                            );
                          },
                          hoverColor: Colors.amber,
                          icon: const Icon(Icons.add_shopping_cart),
                          color: Colors.white,
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.blueAccent),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const likeStarButton(),
                          Text("Name: ${product.name}"),
                          Text("Price: ${product.price}"),
                          Text("Description: ${product.description ?? ""}"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
