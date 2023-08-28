
import 'package:flutter/material.dart';

class AddProdutosPage extends StatelessWidget {
  const AddProdutosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Produtos"),)),
      body: Container(
        height: 200,
        color: Colors.yellow,
      ),
    );
  }
}