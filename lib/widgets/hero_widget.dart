import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_flutter/theme/theme.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        content(),
        image(),
        search(),
      ],
    );
  }

  Container content() {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      width: double.infinity,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 54, top: 76),
      color: CssPublic.colorPrimaryDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/foto.jpg")),
                    borderRadius: BorderRadius.circular(50)),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Howdy",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: CssPublic.colorTextSecondary)),
                  const SizedBox(
                    height: 2,
                  ),
                  Text("Alfa Idar",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: CssPublic.colorWhite)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Text("Get Yout\nSecure Park",
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 30,
                  height: 1,
                  fontWeight: FontWeight.w800,
                  color: CssPublic.colorWhite)),
        ],
      ),
    );
  }

  Widget image() {
    return Positioned(
      width: 160,
      right: 0,
      bottom: 54,
      child: Image.asset("assets/images/hero.png", fit: BoxFit.contain),
    );
  }

  Widget search() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF070625).withOpacity(0.06),
                blurRadius: 20,
                offset: const Offset(0, 10)),
          ],
        ),
        child: TextFormField(
          cursorColor: CssPublic.colorPrimary,
          decoration: InputDecoration(
            filled: true,
            fillColor: CssPublic.colorWhite,
            hintText: "Searching by name by text",
            hintStyle: GoogleFonts.plusJakartaSans(
                fontSize: 16, color: CssPublic.colorTextTertiery),
            enabledBorder: border(),
            focusedBorder: border(),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            suffixIcon: Align(
                widthFactor: 1,
                heightFactor: 1,
                child: SvgPicture.asset("assets/svgs/search.svg")),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide.none,
    );
  }
}
