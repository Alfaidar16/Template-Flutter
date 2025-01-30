import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_flutter/theme/theme.dart';
import 'package:template_flutter/widgets/categories_widget.dart';
import 'package:template_flutter/widgets/hero_widget.dart';
import 'package:template_flutter/widgets/inprogress_widget.dart';
import 'package:template_flutter/widgets/more_widget.dart';
import 'package:template_flutter/widgets/nearby_widget.dart';
import 'package:template_flutter/widgets/sign_up.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DiscoverContent(),
    SignUpScreen(),
    // WalletPage(),
    // SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBFBFBFB),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue, // Ganti dengan warna yang sesuai
        unselectedItemColor: Colors.grey, // Ganti dengan warna yang sesuai
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontSize: 12, fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontSize: 12, fontWeight: FontWeight.w500),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/discover.svg'),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/orders.svg'),
            label: "Register",
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
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }
}

class DiscoverContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeroWidget(),
          SizedBox(height: 20),
          InprogressWidget(),
          SizedBox(height: 20),
          NearbyWidget(),
          SizedBox(height: 20),
          CategoriesWidget(),
          SizedBox(height: 20),
          MoreWidget(),
        ],
      ),
    );
  }
}
