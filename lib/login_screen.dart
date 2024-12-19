import 'package:edu_application/home_screen.dart';
import 'package:flutter/material.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF666d73),
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Log in",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Image.asset("assets/googleicon.png", width: 24, height: 24),
                ),
                label: Text("Log in with Google"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF949FA6),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Image.asset("assets/fbicon.png", width: 24, height: 24),
                ),
                label: Text("Log in with Facebook"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF949FA6),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            TextField(
              controller: username,
              decoration: InputDecoration(
                labelText: "Username",
                filled: true,
                fillColor: Colors.transparent,
                border: OutlineInputBorder(),
                prefixIcon: Image.asset("assets/username_icon.png", width: 24, height: 24),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: password,
              decoration: InputDecoration(
                labelText: "Password",
                filled: true,
                fillColor: Colors.transparent,
                border: OutlineInputBorder(),
                prefixIcon: Image.asset("assets/lock_icon.png", width: 24, height: 24),
              ),
              obscureText: true,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text("Remember me", style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (username.text.trim() == 'waleed' && password.text.trim() == 'waleed123'){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Incorrect Password!'),
                duration: Duration(seconds: 2), // Duration to show Snackbar
              ),
            );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                backgroundColor: Color(0xFF949FA6),
              ),
              child: Text("Log In", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text(
                "Don't have an account? Register here",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
