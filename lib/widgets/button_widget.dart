import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_flutter/theme/theme.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ButtonWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            foregroundColor: CssPublic.colorTextPrimary,
            backgroundColor: CssPublic.colorWhite,
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            textStyle: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w500, fontSize: 14)),
        child: Text(text));
  }
}
