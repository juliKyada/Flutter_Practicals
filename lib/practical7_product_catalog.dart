import 'package:flutter/material.dart';

class Practical7ProductCatalogApp extends StatelessWidget {
  const Practical7ProductCatalogApp({super.key});

  final List<String> productNames = const [
    'Laptop',
    'Phone',
    'Headphones',
    'Watch',
    'Tablet',
    'Camera',
    'Speaker',
    'Mouse'
  ];

  final List<String> productPrices = const [
    '\$999',
    '\$699',
    '\$199',
    '\$299',
    '\$499',
    '\$799',
    '\$149',
    '\$49'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Catalog'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: productNames.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.shopping_bag,
                  size: 60,
                  color: Colors.deepOrange,
                ),
                const SizedBox(height: 10),
                Text(
                  productNames[index],
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  productPrices[index],
                  style: const TextStyle(fontSize: 14, color: Colors.deepOrange),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Buy Now'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
