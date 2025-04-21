import 'package:flutter/material.dart';
import 'package:figma/screen/registration_screen.dart';
import 'package:figma/screen/otp_verfication_screen.dart';

void main() {
  runApp(const TechMeApp());
}

class TechMeApp extends StatelessWidget {
  const TechMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechMe',
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE75E42), // reddish background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: SingleChildScrollView(
            // Added to prevent overflow
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'TechMe',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                // const SizedBox(height: 445, width: 340),
                // Image.asset(
                //   'assets/Rectangle 2.png', // replace with your actual image path
                //   height: 150,width: 200,
                // ),
                const SizedBox(height: 50),
                const Text(
                  'Enter your user name',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 5),
                _buildInputField(Icons.person_outline, 'Enter fullname'),
                const SizedBox(height: 20),
                const Text('Password', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 5),
                _buildInputField(
                  Icons.lock_outline,
                  'Enter password',
                  isPassword: true,
                ),
                const SizedBox(height: 5),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
                
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OTPVerificationApp(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1C1C2D),
                      minimumSize: const Size(double.infinity, 50),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                IconButton(
                 onPressed: () {
        // Add GitHub login logic here
                 },
                 icon: Image.asset('assets/github.png'),
                 iconSize: 40,
                 ),
                 const SizedBox(width: 10),
                 IconButton(
                onPressed: () {
        // Add Twitter login logic here
                 },
                 icon: Image.asset('assets/twitter.png'),
                 iconSize: 40,
                 ),
                 const SizedBox(width: 10),
                 IconButton(
                 onPressed: () {
        // Add Google login logic here
                 },
                 icon: Image.asset('assets/google.png'),
                 iconSize: 40,
                 ),
                 ],
                 ),
                const SizedBox(height: 140),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not yet a member? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: const Text(
                        'Signup Now',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildInputField(
  IconData icon,
  String hintText, {
  bool isPassword = false,
}) {
  return TextFormField(
    obscureText: isPassword,
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: Colors.white),
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.white70),
      filled: true,
      fillColor: const Color(0xFF1C1C2D),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
