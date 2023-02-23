import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:shopping/pages/cart-page.dart';
import 'package:shopping/pages/home-page.dart';
import 'package:shopping/pages/login-page.dart';

class TabsPage extends StatelessWidget {
  //const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: TabBar( 
        tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
            text: "Shopping",
          ),
          Tab(
            icon: Icon(Icons.login),
            text: "Login"
          )
        ],
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.tab, //label
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
      ),
    );
  }
}
