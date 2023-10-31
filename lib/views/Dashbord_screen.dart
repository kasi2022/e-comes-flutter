import 'package:e_com_git_app/views/Home.dart';
import 'package:e_com_git_app/views/search.dart';
import 'package:flutter/material.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({super.key});

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  int _selectedIndex = 0; //New
//New
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final page = [HomeScreen(), SearchProduct(), HomeScreen(), SearchProduct()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashbord",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'addcart')
        ],
      ),
    );
  } 
}
