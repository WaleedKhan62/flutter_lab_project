import 'package:edu_application/login_screen.dart';
import 'package:edu_application/setting.dart';
import 'package:flutter/material.dart';
import 'ebook.dart';
import 'certificate.dart';
import 'account.dart';
import 'notification.dart';

void showRightSideMenu(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Align(
        alignment: Alignment.centerRight,
        child: Material(
          color: Colors.transparent,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height *0.7,
              color: Color(0xFF3A3A3A),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text("Waleed"),
                    accountEmail: Text("waleed@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("W", style: TextStyle(fontSize: 40.0)),
                    ),
                    decoration: BoxDecoration(color: Color(0xFF3A3A3A)),
                  ),
                  ListTile(
                    leading: Icon(Icons.file_copy, color: Colors.white),
                    title: Text("Certificates", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CertificatesScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications, color: Colors.white),
                    title: Text("Notification", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.white),
                    title: Text("Settings", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen() ));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title: Text("Logout", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app, color: Colors.white),
                    title: Text("Exit", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF666d73),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'assets/notification.png',
                        width: 24,
                        height: 24,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NotificationScreen()),
                        );
                      },
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap: () => showRightSideMenu(context),
                      child: Image.asset(
                        'assets/menu.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Waleed",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "Course in progress",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[300],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildCourseIcon("Python", 'assets/python.png'),
                    _buildCourseIcon("Flutter", 'assets/flutter.png'),
                    _buildCourseIcon("C++", 'assets/c++.png'),
                  ],
                ),
                SizedBox(height: 32),
                Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[300],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildRecommendationIcon("Data Analytics", 'assets/graph.png'),
                    _buildRecommendationIcon("Cloud Computing", 'assets/cloud.png'),
                    _buildRecommendationIcon("Machine Learning", 'assets/bulb.png'),
                  ],
                ),
              ],
            ),
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

  Widget _buildCourseIcon(String title, String imagePath) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildRecommendationIcon(String title, String imagePath) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildBottomBarItem(BuildContext context, String imagePath, String label, VoidCallback onTap) {
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
