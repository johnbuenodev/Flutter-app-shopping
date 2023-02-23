import 'package:flutter/material.dart';
import 'package:shopping/pages/cart-page.dart';
import 'package:shopping/pages/home-page.dart';
import 'package:shopping/pages/login-page.dart';
import 'package:shopping/pages/tabs-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
