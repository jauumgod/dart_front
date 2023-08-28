import 'package:flutter/material.dart';

class ListOfCompras extends StatelessWidget {
  const ListOfCompras({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Lista de Compras"),),
      ),
      body: Container(
        height: 200,
        color: Colors.green,
      ),
    );
  }
}