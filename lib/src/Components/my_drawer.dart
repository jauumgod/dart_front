import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255,14,68,112)),
              child: Text('Options', style: GoogleFonts.bebasNeue(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold
              )),),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(onTap: (){},
                child: Text('Todos os produtos', style: GoogleFonts.bebasNeue(fontSize: 14, fontWeight: FontWeight.bold)))),

              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(onTap: (){},
                child: Text('Media de preço', style: GoogleFonts.bebasNeue(fontSize: 14, fontWeight: FontWeight.bold)))),
              
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(onTap: (){},
                child: Text('Supermercados', style: GoogleFonts.bebasNeue(fontSize: 14, fontWeight: FontWeight.bold)))),
            
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(onTap: (){},
                child: Text('Ajuda', style: GoogleFonts.bebasNeue(fontSize: 14, fontWeight: FontWeight.bold)))),
        
        ],
      ),
    );
  }
}