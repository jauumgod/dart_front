import 'package:dart_front/src/Components/colors/colors_base.dart';
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
    final ColorBase colorBase = ColorBase();

    return Scaffold(
        backgroundColor: colorBase.colorsBlue,
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: colorBase.colorsBlue,
          elevation: 0,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 100,
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6), color: Colors.white),
                child: Center(
                    child: ListView(
                  children: [
                    //TODO: create row com nome - valor
                    Center(child: Text("Ultimas Compras", style: GoogleFonts.bebasNeue(fontSize: 20, fontWeight: FontWeight.bold),),),
                    const Divider(),
                    const Text("primeira lista"),
                    const Text("segunda lista"),
                    const Text("quarta"),
                    const Text("quinta"),
                    const Text("sexta"),
                    const Text("setima"),
                    const Text("oitava"),
                  ],
                )),
              ),
            ),
          ],
        ));
  }
}
