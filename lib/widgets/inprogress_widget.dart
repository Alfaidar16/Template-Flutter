import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_flutter/theme/theme.dart';
import 'package:template_flutter/widgets/button_widget.dart';
import 'package:template_flutter/widgets/container_widget.dart';

class InprogressWidget extends StatelessWidget {
  const InprogressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: "In Progress Parking To",
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
            color: CssPublic.colorPrimary,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage("assets/images/bg_in_progress.png"),
                fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: CssPublic.colorPrimary.withOpacity(0.4),
                  blurRadius: 24,
                  offset: const Offset(0, 10)),
            ]),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/svgs/grid.svg",
              height: 26,
              width: 26,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aidar Tower",
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: CssPublic.colorWhite),
                ),
                Text("Lot 192MB",
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: CssPublic.colorWhite)),
              ],
            ),
            Spacer(),
            ButtonWidget(
              text: "Open Maps",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
