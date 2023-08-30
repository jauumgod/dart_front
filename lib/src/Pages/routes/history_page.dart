import 'package:dart_front/src/Components/colors/colors_base.dart';
import 'package:dart_front/src/Components/history_component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryListPage extends StatelessWidget {
  const HistoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorBase colorBase = ColorBase();

    List<String> items = [
      "Atacadão",
      "Rede Store",
      "Mega SuperMercados",
      "Tatico"
    ];
    List<String> describe = [
      "lista criada dia 20-07",
      "lista criada dia 28-07",
      "lista criada dia 04-08",
      "lista criada dia 12-08"
    ];
    return Scaffold(
      backgroundColor: colorBase.colorsBlue,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Histórico de Compras',
            style: GoogleFonts.bebasNeue(
              fontSize: 28,
              fontWeight: FontWeight.normal,
              color: colorBase.colorsBlue,
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
          prototypeItem: HistoryTile(
              titleOfHistory: items.first, describe: describe.first),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: HistoryTile(titleOfHistory: items[index], describe: describe[index]),
            );
          }),
    );
  }
}
