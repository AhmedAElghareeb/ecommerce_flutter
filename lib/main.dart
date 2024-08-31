import 'package:ecommerce_flutter/src/presentation/splash/view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerce Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFC7902A),
        useMaterial3: false,
      ),
      home: const SplashView(),
    );
  }
}
