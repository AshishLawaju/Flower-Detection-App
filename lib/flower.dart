import 'package:flutter/material.dart';
import 'package:imageclassification/11main.dart';
import 'package:imageclassification/about.dart';
import 'package:imageclassification/flist.dart';
import 'package:imageclassification/listofflower.dart';


//navbar page
class flowerPage extends StatefulWidget {
  const flowerPage({Key? key}) : super(key: key);

  @override
  State<flowerPage> createState() => _flowerPageState();
}

class _flowerPageState extends State<flowerPage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    MyHomePage(),
    GridB(),
    aboutPage(),
  ];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //podCoder
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera,
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Detect Flower',
              style: TextStyle(
                  color: _selectedIndex == 0 ? Colors.blue : Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_list_rounded,
              color: _selectedIndex == 1 ? Colors.green : Colors.grey,
            ),
            title: Text(
              'Flowers',
              style: TextStyle(
                  color: _selectedIndex == 1 ? Colors.green : Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 2 ? Colors.orangeAccent : Colors.grey,
            ),
            title: Text(
              'About',
              style: TextStyle(
                  color:
                      _selectedIndex == 2 ? Colors.orangeAccent : Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
