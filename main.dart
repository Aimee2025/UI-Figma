import 'package:flutter/material.dart';
import 'password_recover.dart';
import 'package:figma/screen/splash_screen.dart';
import 'package:figma/screen/login_screen.dart';
import 'package:figma/screen/registration_screen.dart';
import 'package:figma/screen/otp_verfication_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechMe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingPage(), // Splash Screen
        '/login': (context) => const LoginPage(), // Login Screen
        '/register': (context) => const SignUpPage(), // Registration Screen
        '/otp':
            (context) =>
                const OTPVerificationScreen(), // OTP Verification Screen
        '/recover':
            (context) =>
                const PasswordRecoverScreen(), // Password Recovery Screen
      },
    );
  }
}
