import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  
  final Function()? onTap;
  final String? buttonname;
  final Color color;

  const MyButton({ 
    super.key,
    required this.onTap,
    required this.buttonname,
    this.color = Colors.white,
    });

    @override

    Widget build(BuildContext context){
      return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                "$buttonname",
                style: GoogleFonts.bebasNeue(
                  color: color == Colors.white? Colors.black : Colors.white,
                  fontSize: 18, fontWeight: FontWeight.bold), 
              ),
          ),
        ),
      );
    }
}
