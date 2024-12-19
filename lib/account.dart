import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountScreen(),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C2F35),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF2C2F35),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Accounts',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: const [
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            CustomButton(title: 'User name'),
            const SizedBox(height: 10),
            CustomButton(title: 'Email'),
            const SizedBox(height: 10),
            CustomButton(title: 'Address'),
            const SizedBox(height: 10),
            CustomButton(title: 'Age & D.O.B'),
            const SizedBox(height: 10),
            CustomButton(title: 'Educational status'),
            const SizedBox(height: 10),
            CustomButton(title: 'Share'),
            const SizedBox(height: 10),
            CustomButton(title: 'Logout'),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF5E55FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
