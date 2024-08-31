import 'package:ecommerce_flutter/src/presentation/cart/view.dart';
import 'package:ecommerce_flutter/src/presentation/favorites/view.dart';
import 'package:ecommerce_flutter/src/presentation/home/view.dart';
import 'package:ecommerce_flutter/src/presentation/profile/view.dart';
import 'package:flutter/material.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {

  int current = 0;
  final List<Widget> pages = [
    const HomeView(),
    const FavoritesView(),
    const CartView(),
    const ProfileView(),
  ];

  final List<String> titles = [
    'Home',
    'Favorites',
    'Cart',
    'Profile',
  ];

  final List<IconData> icons = [
    Icons.home,
    Icons.favorite_border,
    Icons.shopping_cart,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current],
      bottomNavigationBar: BottomNavigationBar(
        items: List.generate(
          pages.length,
              (index) => BottomNavigationBarItem(
            icon: Icon(
              icons[index],
              color: current == index
                  ? Colors.white
                  : Colors.black,
            ),
            label: titles[index],
          ),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: current,
        onTap: (index) {
          current = index;
          setState(() {});
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFFB9C9A8),
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
