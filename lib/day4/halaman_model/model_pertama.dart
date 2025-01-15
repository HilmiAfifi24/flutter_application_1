import 'package:flutter/material.dart';
import 'package:flutter_application_1/day4/models/product.dart';

class ModelsPertama extends StatelessWidget {
  ModelsPertama({super.key});

  // Daftar produk contoh
  final List<Product> products = [
    Product(judul: 'Produk 1', harga: 50000, deskripsi: 'Deskripsi Produk 1'),
    Product(judul: 'Produk 2', harga: 75000, deskripsi: 'Deskripsi Produk 2'),
    Product(judul: 'Produk 3', harga: 100000, deskripsi: 'Deskripsi Produk 3'),
    Product(judul: 'Produk 4', harga: 150000, deskripsi: 'Deskripsi Produk 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Models Pertama'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom
          crossAxisSpacing: 8, // Jarak antar kolom
          mainAxisSpacing: 8, // Jarak antar baris
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    product.judul,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Harga: Rp ${product.harga}',
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.deskripsi,
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: products.length, // Jumlah item sesuai panjang daftar produk
      ),
    );
  }
}

