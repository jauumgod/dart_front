
import 'package:dart_front/src/Pages/routes/history_page.dart';
import 'package:dart_front/src/Pages/routes/homepage.dart';
import 'package:dart_front/src/Pages/routes/list_of_compras.dart';
import 'package:dart_front/src/Pages/routes/title_list.dart';
import 'package:flutter/material.dart';

class InitialPageRoute extends StatefulWidget {
  const InitialPageRoute({super.key});

  @override
  State<InitialPageRoute> createState() => _InitialPageRouteState();
}

class _InitialPageRouteState extends State<InitialPageRoute> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomePage(),
         AddTitleListName(),
          ListOfCompras(),
          HistoryListPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.animateToPage(index,
                duration: const Duration(milliseconds: 710),
                curve: Curves.easeInOutSine);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 9, 38, 62),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_business_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.history_outlined), label: ''),
        ],
      ),
    );
  }
}
