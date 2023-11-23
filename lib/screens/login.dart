import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'register.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.lightBlueAccent],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 13.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true, // Ganti dengan nilai sesuai kebutuhan
                        onChanged: (value) {
                          // Implementasi Remember Password
                        },
                        checkColor: Colors.white, // Warna centang putih
                        activeColor: Colors.white, // Warna latar checkbox putih
                        hoverColor: Colors.white, // Warna garis checkbox saat dihover putih
                      ),
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Implementasi Forgot Password
                    },
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create an Account ?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Implementasi logika autentikasi bisa ditambahkan di sini
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
                child: Text('Login'),
              ),
              SizedBox(height: 5.0),
              Text(
                'or',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 5.0),
              ElevatedButton.icon(
                onPressed: () {
                  // Implementasi login with Google
                },
                icon: Image.asset('assets/google.png', width: 24.0, height: 24.0),
                label: Text('Login with Google'),
              ),
              SizedBox(height: 5.0),
              ElevatedButton.icon(
                onPressed: () {
                  // Implementasi login with Facebook
                },
                icon: Image.asset('assets/facebook.png', width: 24.0, height: 24.0),
                label: Text('Login with Facebook'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
