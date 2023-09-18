import 'package:flutter/material.dart';
import 'package:mytodo/providers/wallet_provider.dart';
import 'package:mytodo/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => Walletprovider(),
      child: MaterialApp(
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor:  const Color.fromARGB(255, 30, 150, 252),
        ),
      ),
    );
  }
}
