import 'package:ecommerce_gadgets/presentation/screens/workspace_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/screens/home_page.dart';
import 'presentation/screens/login_page.dart';
import 'presentation/screens/signup_page.dart';
import 'presentation/screens/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      defaultTransition: Transition.rightToLeftWithFade,
      getPages: [
        GetPage(name: '/', page: () => const WelcomePage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/signup', page: () => const SignupPage()),
        GetPage(name: '/homepage', page: () => HomePage()),
        GetPage(name: '/workspace', page: () => WorkspacePage()),
      ],
      home: const WelcomePage(),
    );
  }
}
