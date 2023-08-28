
import 'package:flutter/material.dart';
import '../../Components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Center(child: Text("Home")),
      ),
      body: Container(
        height: 200,
        color: Colors.black,
      ),
    );
  }
}