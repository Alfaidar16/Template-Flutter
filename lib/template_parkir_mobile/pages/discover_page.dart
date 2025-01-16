import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_flutter/theme/theme.dart';
import 'package:template_flutter/widgets/categories_widget.dart';
import 'package:template_flutter/widgets/hero_widget.dart';
import 'package:template_flutter/widgets/inprogress_widget.dart';
import 'package:template_flutter/widgets/more_widget.dart';
import 'package:template_flutter/widgets/nearby_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBFBFBFB),
      bottomNavigationBar: bottomNavigationBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            SizedBox(
              height: 20,
            ),
            InprogressWidget(),
            SizedBox(
              height: 20,
            ),
            NearbyWidget(),
            SizedBox(
              height: 20,
            ),
            CategoriesWidget(),
            SizedBox(
              height: 20,
            ),
            MoreWidget()
          ],
        ),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: CssPublic.colorWhite,
      selectedItemColor: CssPublic.colorPrimary,
      unselectedItemColor: CssPublic.colorGray,
      showUnselectedLabels: true,
      selectedLabelStyle: GoogleFonts.plusJakartaSans(
          fontSize: 12, fontWeight: FontWeight.bold),
      unselectedLabelStyle: GoogleFonts.plusJakartaSans(
          fontSize: 12, fontWeight: FontWeight.w500),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/svgs/discover.svg'),
          label: "Discover",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/svgs/orders.svg'),
          label: "Orders",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/svgs/wallet.svg'),
          label: "Wallet",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/svgs/setting.svg'),
          label: "Setting",
        ),
      ],
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem({
    required String label,
    required String icon,

    // required bool active,
  }) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          icon,
          colorFilter:
              const ColorFilter.mode(CssPublic.colorGray, BlendMode.srcIn),
        ),
        activeIcon: SvgPicture.asset(
          icon,
          colorFilter:
              const ColorFilter.mode(CssPublic.colorPrimary, BlendMode.srcIn),
        ),
        label: label);
  }
}
