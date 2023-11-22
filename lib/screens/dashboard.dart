import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0), // Mengubah padding menjadi 8.0
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Cari Kost...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Mengubah radius border
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                KostCard(
                  image: 'assets/kost_1.jpg',
                  name: 'Kost Kenangan',
                  price: 'Rp 500.000 / Bulan',
                  location: 'Jl. Pahlawan No.17',
                  rating: 4,
                ),
                KostCard(
                  image: 'assets/kost_2.jpg',
                  name: 'Kost Berkah Jaya',
                  price: 'Rp 350.000 / Bulan',
                  location: 'Jl. Merdeka No. 45',
                  rating: 3,
                ),
                KostCard(
                  image: 'assets/kost_3.jpg',
                  name: 'Kost Asri',
                  price: 'Rp 400.000 / Bulan',
                  location: 'Jl. Melati No. 20',
                  rating: 5,
                ),
                // Tambahkan card lain sesuai kebutuhan
              ],
            ),
          ),
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
  final int rating;

  KostCard({
    required this.image,
    required this.name,
    required this.price,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0, // Mengurangi tinggi card menjadi 180.0
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 14.0, // Mengurangi ukuran teks menjadi 14.0
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: List.generate(
                            rating,
                                (index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14.0, // Mengurangi ukuran ikon menjadi 14.0
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      '$price',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Lokasi: $location'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
