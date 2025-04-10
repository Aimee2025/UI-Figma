import 'package:flutter/material.dart';

void main() {
  runApp(const TechMeSignUpApp());
}

class TechMeSignUpApp extends StatelessWidget {
  const TechMeSignUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechMe Sign Up',
      home: const SignUpPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = const Color(0xFFE75E42);
    final Color buttonColor = const Color(0xFF1C1C2D);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'TechMe',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              const Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Your Name',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 5),
              _buildInputField(Icons.person_outline, 'Enter fullname'),
              const SizedBox(height: 20),
              const Text(
                'Email Address',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 5),
              _buildInputField(Icons.email_outlined, 'Enter email'),
              const SizedBox(height: 20),
              const Text(
                'Phone Number',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 5),
              _buildInputField(Icons.phone_android, 'Enter phone'),
              const SizedBox(height: 20),
              const Text(
                'Password',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 5),
              _buildInputField(Icons.lock_outline, 'Enter password', isPassword: true),
              const SizedBox(height: 20),
              const Text(
                'Confirm Password',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 5),
              _buildInputField(Icons.lock_outline, 'Confirm password', isPassword: true),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Login Now',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(IconData icon, String hintText, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white70),
        prefixIcon: Icon(icon, color: Colors.white70),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white70),
        ),
      ),
    );
  }
}