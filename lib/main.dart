import 'package:ecommerce_gadgets/presentation/screens/cart_page.dart';
import 'package:ecommerce_gadgets/presentation/screens/product_details.dart';
import 'package:ecommerce_gadgets/presentation/screens/workspace_page.dart';
import 'package:ecommerce_gadgets/presentation/screens/youtubers_page.dart';
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
        GetPage(name: '/homepage', page: () => const HomePage()),
        GetPage(name: '/workspace', page: () => const WorkspacePage()),
        GetPage(name: '/youtuberspage', page: () => const YoutubersPage()),
        GetPage(name: '/cartpage', page: () => const CartPage()),
        GetPage(
            name: '/productsdetailspage', page: () => const ProductDetails()),
      ],
      home: const WelcomePage(),
    );
  }
}
