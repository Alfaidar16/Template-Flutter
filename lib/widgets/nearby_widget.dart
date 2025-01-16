import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_flutter/models/park.dart';
import 'package:template_flutter/theme/theme.dart';
import 'package:template_flutter/widgets/container_widget.dart';
import 'package:template_flutter/widgets/stats_widget.dart';

class NearbyWidget extends StatelessWidget {
  const NearbyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        title: "Nearby\nParking Spoot",
        actionText: "View All",
        onActionTap: () {},
        child: SizedBox(
          height: 200,
          child: ListView.separated(
            itemCount: parks.length,
            itemBuilder: (BuildContext context, int index) {
              return NearbyParkingItem(
                park: parks[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 16,
              );
            },
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ));
  }
}

class NearbyParkingItem extends StatelessWidget {
  final Park park;
  const NearbyParkingItem({super.key, required this.park});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: CssPublic.colorWhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          const SizedBox(
            height: 10,
          ),
          content(),
        ],
      ),
    );
  }

  Column content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          park.title,
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: CssPublic.colorTextPrimary),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 170,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StatsWidget(
                icon: "assets/svgs/routing.svg",
                text: park.distance,
              ),
              StatsWidget(
                icon: "assets/svgs/dollar.svg",
                text: park.distance,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container image() {
    return Container(
      height: 100,
      width: 170,
      padding: const EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(14),
        image:
            DecorationImage(image: AssetImage(park.image), fit: BoxFit.cover),
      ),
      child: park.type != null && park.typeText != null
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                  color: park.type == ParkType.discount
                      ? CssPublic.colorPink
                      : CssPublic.colorPrimary,
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                park.typeText!.toUpperCase(),
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 11,
                    fontWeight: FontWeight.w900,
                    color: CssPublic.colorWhite),
              ),
            )
          : null,
    );
  }
}
