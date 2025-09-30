import 'package:flutter/material.dart';

/// Practical 7: Product Catalog App

/// Data model for Product
class Product {
  final int id;
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

/// Sample product data
const List<Product> _products = <Product>[
  Product(
    id: 1,
    name: 'Product 1',
    price: 19.99,
    imageUrl: 'https://picsum.photos/200/300?random=1',
  ),
  Product(
    id: 2,
    name: 'Product 2',
    price: 29.99,
    imageUrl: 'https://picsum.photos/200/300?random=2',
  ),
  Product(
    id: 3,
    name: 'Product 3',
    price: 39.99,
    imageUrl: 'https://picsum.photos/200/300?random=3',
  ),
  Product(
    id: 4,
    name: 'Product 4',
    price: 49.99,
    imageUrl: 'https://picsum.photos/200/300?random=4',
  ),
  Product(
    id: 5,
    name: 'Product 5',
    price: 59.99,
    imageUrl: 'https://picsum.photos/200/300?random=5',
  ),
  Product(
    id: 6,
    name: 'Product 6',
    price: 69.99,
    imageUrl: 'https://picsum.photos/200/300?random=6',
  ),
  Product(
    id: 7,
    name: 'Product 7',
    price: 79.99,
    imageUrl: 'https://picsum.photos/200/300?random=7',
  ),
  Product(
    id: 8,
    name: 'Product 8',
    price: 89.99,
    imageUrl: 'https://picsum.photos/200/300?random=8',
  ),
];

class Practical7ProductCatalogApp extends StatelessWidget {
  const Practical7ProductCatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practical 7: Product Catalog',
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
            fontSize: 20,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.75,
        ),
        itemCount: _products.length,
        itemBuilder: (BuildContext context, int index) {
          return _ProductCard(product: _products[index]);
        },
      ),
    );
  }
}

/// Individual product card widget
class _ProductCard extends StatelessWidget {
  final Product product;
  const _ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12.0),
              ),
              child: Image.network(product.imageUrl, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product.name,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4.0),
                Text(
                  '\$${product.price}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
