import 'package:flutter/material.dart';
import 'package:foodia_app/pages/follower_page.dart';
import 'package:foodia_app/pages/home_page.dart';

class Mainpages extends StatefulWidget {
  const Mainpages({super.key});

  @override
  State<Mainpages> createState() => _MainpagesState();
}

class _MainpagesState extends State<Mainpages> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    FollowerPage(),
    Container(color: Colors.red),
    Container(color: Colors.orange),
    Container(color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
          BottomNavigationBarItem(
            icon: Icon(Icons.follow_the_signs),
            label: "متابعة",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "حسابي",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "المحفظة"),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "طلباتي"),
        ],
      ),
    );
  }
}
