import 'package:dart_front/src/Components/compras_tile.dart';
import 'package:dart_front/src/repository/constants/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String names = NamesOfProducts.descArroz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 14, 68, 112),
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 14, 68, 112),
          elevation: 0,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Faça sua lista\naqui',
                    style: GoogleFonts.bebasNeue(
                        fontSize: 40, color: Colors.white),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: 80,
                      color: Colors.white,
                    )),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ComprasTile(
                    image: "lib/src/images/arroz.png",
                    nameItem: "Arroz 5kg",
                    valor: 21.95),
                ComprasTile(
                    image: "lib/src/images/bolacha_mabel.png",
                    nameItem: "Bolacha Mabel",
                    valor: 5.39)
              ],
            ))
          ],
        ));
  }
}
