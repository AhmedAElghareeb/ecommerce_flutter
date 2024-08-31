import 'dart:async';
import 'dart:core';
import 'package:ecommerce_flutter/src/presentation/login/view.dart';
import 'package:ecommerce_flutter/utils/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    initSplash();
  }

  initSplash() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginView(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            AppAssets.splashPic,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.13,
            right: 100,
            child: const Text(
              "Welcome To Our Shopping App",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
