import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:template_flutter/models/park.dart';
import 'package:template_flutter/theme/theme.dart';
import 'package:template_flutter/widgets/container_widget.dart';
import 'package:template_flutter/widgets/stats_widget.dart';

class MoreWidget extends StatelessWidget {
  const MoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        title: "Brows\nCategories",
        actionText: "View All",
        onActionTap: () {},
        child: ListView.separated(
          itemCount: mores.length,
          itemBuilder: (BuildContext context, int index) {
            return MoreItem(
              park: mores[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 16,
            );
          },
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
        ));
  }
}

class MoreItem extends StatelessWidget {
  final Park park;
  const MoreItem({super.key, required this.park});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: CssPublic.colorWhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 76,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: AssetImage(park.image))),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
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
              Row(
                children: [
                  StatsWidget(
                      icon: "assets/svgs/routing.svg", text: park.distance),
                  const SizedBox(
                    width: 8,
                  ),
                  StatsWidget(
                      icon: "assets/svgs/dollar.svg", text: park.distance),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  RatingStars(
                    value: park.ratingStar ?? 0,
                    valueLabelVisibility: false,
                    starSize: 18,
                    starSpacing: 2,
                    starColor: CssPublic.colorOrange,
                    starOffColor: CssPublic.colorDisabled,
                    starBuilder: (index, color) {
                      return SvgPicture.asset(
                        "assets/svgs/star.svg",
                        colorFilter: ColorFilter.mode(color!, BlendMode.srcIn),
                      );
                    },
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    NumberFormat("(#,###)").format(park.ratingCount ?? 0),
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: CssPublic.colorTextPrimary),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
