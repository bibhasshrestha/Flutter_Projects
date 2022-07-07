import 'package:flutter/material.dart';
import 'package:myapp/view/home/home_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {

  List pages = [
    HomePage(),
    HomePage(),
  ];

  int currentIndex = 0;

   onTap (int index){
     setState(() {
       currentIndex = index;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 14,
        selectedFontSize: 14,
        onTap: onTap,
        currentIndex: currentIndex,
        items: [

            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
    );
  }
}
