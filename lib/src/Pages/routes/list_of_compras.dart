import 'package:dart_front/src/Components/colors/colors_base.dart';
import 'package:dart_front/src/Components/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfCompras extends StatelessWidget {
  const ListOfCompras({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "Arroz 5Kg",
      "Feijao 2Kg",
      "Carne 1Kg",
      "Pão de Alho",
      "Manteiga",
      "Leite 1L",
      "Queijo 1Kg",
      "Banana 500g",
      "Frango 1Kg",
      "Maionese",
      "Suco 1L"
    ];
    final ColorBase colorBase = ColorBase();

    return Scaffold(
      backgroundColor: colorBase.colorsBlue,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Lista de Compras',
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
      body: ListView.builder(
          itemCount: items.length,
          prototypeItem: SquareTile(
            productName: items.first,
            productPrice: "10.59",
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SquareTile(productName: items[index], productPrice: "10.29"),
            );
          }),
    );
  }
}
