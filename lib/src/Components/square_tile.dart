import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SquareTile extends StatefulWidget {
  final String productName, productPrice;
  bool isSelected;

  SquareTile({
    super.key,
    required this.productName,
    this.isSelected = false,
    required this.productPrice,
  });

  @override
  State<SquareTile> createState() => _SquareTileState();
}

class _SquareTileState extends State<SquareTile> {
  @override
  Widget build(BuildContext context) {
    
    

    return Container(
      height: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.productName, style: GoogleFonts.bebasNeue(fontSize: 16)),
          Text(widget.productPrice),
          Checkbox(value: widget.isSelected, onChanged: (bool? value){
            setState(() {
              widget.isSelected = value!;
            });
          })
        ],
      ),
    );
  }
}
