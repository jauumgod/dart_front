import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HistoryTile extends StatelessWidget {
  final String titleOfHistory, describe;

  const HistoryTile({super.key,
  required this.titleOfHistory,
  required this.describe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200]),
      child: Column(
        children: [
          Text(titleOfHistory, style: GoogleFonts.bebasNeue(
            fontSize: 20,
            fontWeight: FontWeight.bold
          )),
          Text(describe, style: GoogleFonts.sansita(
            fontSize: 12,
            fontWeight: FontWeight.normal
          ))
        ],
      )
    );
  }
}
