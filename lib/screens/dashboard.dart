import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: ListView(
        children: [
          KostCard(
            image: 'assets/kost_1.jpg',
            name: 'Kost Kenangan',
            price: 'Rp 500.000',
            location: 'Jl. Pahlawan No.17',
          ),
          KostCard(
            image: 'assets/kost_2.jpg',
            name: 'Kost Berkah Jaya',
            price: 'Rp 350.000',
            location: 'Jl. Merdeka No. 45',
          ),
          KostCard(
            image: 'assets/kost_3.jpg',
            name: 'Kost Asri',
            price: 'Rp 400.000',
            location: 'Jl. Melati No. 20',
          ),
          // Tambahkan card lain sesuai kebutuhan
        ],
      ),
    );
  }
}

class KostCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String location;

  KostCard({
    required this.image,
    required this.name,
    required this.price,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0, // Atur tinggi card sesuai keinginan Anda
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: double.infinity,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text('Harga: $price'),
                  Text('Lokasi: $location'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
