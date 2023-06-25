import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final double? letterspacing;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final int? maxLines;
  final TextOverflow? overflow;

  const CustomText(
      {Key? key,
      required this.text,
      this.size,
      this.color,
      this.letterspacing = 0,
      this.textAlign,
      this.weight,
      this.maxLines,
      this.decoration,
      this.overflow
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
   // String 
   final sizer = MediaQuery.of(context).size;
    return Text(text ?? '',
        maxLines: maxLines,
        overflow: overflow,
        style: GoogleFonts.outfit(
          textStyle:TextStyle(
                letterSpacing: letterspacing,
                fontSize: size ?? sizer.width / 25,
                color: color,
                decoration: decoration ?? TextDecoration.none,
                fontWeight: weight ?? FontWeight.normal),
                ),
              textAlign:textAlign ?? TextAlign.left 
                );
  }
}
