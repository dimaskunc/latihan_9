import 'package:flutter/material.dart';
import 'dashboard.dart';  // Sesuaikan dengan file dashboard.dart

class KostDetailPage extends StatelessWidget {
  final String name;
  final String price;
  final String location;
  final int rating;
  final String image;
  final String facilities;
  final String type;

  KostDetailPage({
    required this.name,
    required this.price,
    required this.location,
    required this.rating,
    required this.image,
    required this.facilities,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kost', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              name,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.0),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              leading: Icon(Icons.attach_money),
              title: Text('Harga'),
              subtitle: Text(
                price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),

            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              leading: Icon(Icons.location_on),
              title: Text('Lokasi'),
              subtitle: Text(location),
            ),

            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              leading: Icon(Icons.star),
              title: Text('Rating'),
              subtitle: Row(
                children: List.generate(
                  rating,
                      (index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16.0,
                  ),
                ),
              ),
            ),

            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              leading: Icon(Icons.home),
              title: Text('Tipe Kost'),
              subtitle: Text(type),
            ),

            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              leading: Icon(Icons.layers),
              title: Text('Fasilitas'),
              subtitle: Text(facilities),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan logika untuk menghubungi pemilik
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.phone),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,  // Set sesuai dengan index halaman 'User'
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.push_pin),
            label: 'Pinned',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
        onTap: (index) {
          // Handle navigation to other pages
          if (index == 0) {
            // Navigate to home (DashboardPage)
          } else if (index == 1) {
            // Navigate to search or stay on the current page
          } else if (index == 2) {
            // Navigate to pinned
          } else if (index == 3) {
            // Navigate to message
          } else if (index == 4) {
            // Navigate to user
          }
        },
      ),
    );
  }
}
