import 'package:flutter/material.dart';
import 'package:mytodo/screens/main_screen_home.dart';
import 'package:mytodo/screens/quick_send.dart';
import 'package:mytodo/screens/wallet_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;
  List<Widget> pages = const [MainHome(), QuickSend(), WalletScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        currentIndex: _currentPage,
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        unselectedIconTheme: const IconThemeData(color: Colors.green),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_rounded,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.monetization_on_outlined,
              ),
              label: "Payment"),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "Wallet",
          ),
        ],
      ),
    );
  }
}
