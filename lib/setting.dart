import 'package:flutter/material.dart';
import 'home_screen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF666D73),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
              (Route<dynamic> route) => false,
            );
          },
        ),
        actions: [
          Icon(Icons.settings, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        color: Color(0xFF666D73),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Color(0xFF363E40),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _settingsItem(Icons.person, 'Account settings'),
                _settingsItem(Icons.notifications, 'Notifications', hasSwitch: true),
                _settingsItem(Icons.language, 'Language & Region'),
                _settingsItem(Icons.lock, 'Privacy settings'),
                _settingsItem(Icons.info, 'About'),
                _settingsItem(Icons.logout, 'Logout'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _settingsItem(IconData icon, String text, {bool hasSwitch = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 24),
              SizedBox(width: 15),
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          if (hasSwitch)
            Switch(
              value: true,
              onChanged: (bool value) {},
              activeColor: Colors.blue,
            ),
        ],
      ),
    );
  }
}
