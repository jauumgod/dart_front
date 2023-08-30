import 'package:dart_front/src/Components/input_text.dart';
import 'package:dart_front/src/Components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProdutosPage extends StatelessWidget {
  const AddProdutosPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameProductController = TextEditingController();
    TextEditingController _quantityProductController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 68, 112),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Produtos',
            style: GoogleFonts.bebasNeue(
              fontSize: 28,
              fontWeight: FontWeight.normal,
              color: const Color.fromARGB(255, 14, 68, 112),
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        )),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 60),
          //name of product
          CustomTextField(
            icon: Icons.list_alt_rounded,
            label: "Nome do Produto",
            controller: _nameProductController,
            
          ),
          //quantity of product
          const SizedBox(height: 20),
          CustomTextField(
            icon: Icons.list_alt_rounded,
            label: "Quantidade",
            controller: _quantityProductController,
          ),
          //button to add
          const SizedBox(height: 40),
          MyButton(onTap: (){}, buttonname: "Adicionar Produto")
        ],
      ),
    );
  }
}
