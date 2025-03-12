// ignore_for_file: unused_field

import 'package:flutter/material.dart';



class BnBView extends StatefulWidget {
  const BnBView({super.key});

  @override
  BnBViewState createState() => BnBViewState();
}

class BnBViewState extends State<BnBView> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  void _onItemTapped(int index)
  {
    setState(() {_selectedIndex = index; _controller.forward(from: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          Center(child: Text("Home", style: TextStyle(fontSize: 24))),
          Center(child: Text("Search", style: TextStyle(fontSize: 24))),
          Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
          Positioned(
            top: 0, // Adjust indicator position
            left: MediaQuery.of(context).size.width / 3 * _selectedIndex + 20,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: MediaQuery.of(context).size.width / 3 - 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
