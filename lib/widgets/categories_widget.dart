import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_flutter/models/category.dart';
import 'package:template_flutter/theme/theme.dart';
import 'package:template_flutter/widgets/container_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        title: "Brows\nCategories",
        actionText: "View All",
        onActionTap: () {},
        child: SizedBox(
          height: 110,
          child: ListView.separated(
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItem(
                category: categories[index],
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

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: CssPublic.colorWhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            category.icon,
            width: 50,
            height: 50,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            category.name,
            style: GoogleFonts.plusJakartaSans(
                fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
