import 'package:edu_application/home_screen.dart';
import 'package:flutter/material.dart';
import 'certificate.dart';
import 'account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EbookScreen(),
    );
  }
}

class EbookScreen extends StatelessWidget {
  const EbookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    "eBooks",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    EbookCard(imagePath: 'assets/pythonc.png', title: 'Python'),
                    EbookCard(imagePath: 'assets/java.png', title: 'Java'),
                    EbookCard(imagePath: 'assets/cpp.png', title: 'C++'),
                    EbookCard(imagePath: 'assets/javascript.png', title: 'Javascript'),
                    EbookCard(imagePath: 'assets/rlogo.png', title: 'R'),
                    EbookCard(imagePath: 'assets/swift.png', title: 'Swift'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildBottomBarItem(
              context,
              'assets/home.png',
              "Home",
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            _buildBottomBarItem(
              context,
              'assets/books.png',
              "Courses",
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EbookScreen()),
                );
              },
            ),
            _buildBottomBarItem(
              context,
              'assets/certificates.png',
              "Certificate",
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CertificatesScreen()),
                );
              },
            ),
            _buildBottomBarItem(
              context,
              'assets/profile.png',
              "Profile",
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBarItem(BuildContext context, String imagePath,
      String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 24,
            height: 24,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(fontSize: 12, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}

class EbookCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const EbookCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 90,
          width: 90,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        const Text(
          "beginner",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}
