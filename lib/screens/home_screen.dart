import 'package:flutter/material.dart';
import 'package:webmobile2/screens/main_screens/main_screen.dart';
import 'package:webmobile2/screens/main_screens/search_screen.dart';

import 'main_screens/fridge_screen.dart';
import 'main_screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: const [
              MainScreen(),
              SearchScreen(),
              FridgeScreen(),
              ProfileScreen()
            ]),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: BottomNavigationBar(
            elevation: 0,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.orange,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? Image.asset('images/active_main_ic/Home-1.png')
                    : Image.asset('images/Home.png'),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? Image.asset('images/active_main_ic/Search.png')
                    : Image.asset('images/Search.png'),
                label: 'Поиск',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? Image.asset('images/active_main_ic/ic_frizenFill.png')
                    : Image.asset('images/ic_frizen.png'),
                label: 'Холодильник',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 3
                    ? Image.asset('images/active_main_ic/Profile.png')
                    : Image.asset('images/Profile.png'),
                label: 'Профиль',
              ),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex =
                    index; // Обновление выбранного индекса при нажатии на элемент
                _pageController.animateToPage(_selectedIndex,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut);
              });
            },
          ),
        ));
  }
}
