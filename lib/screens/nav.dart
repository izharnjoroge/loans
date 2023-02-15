import 'package:flutter/material.dart';
import 'package:loans/exports.dart';
import 'package:google_fonts/google_fonts.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List pages = [
    const HomeScreen(),
    const NotificationsPage(),
    const LogOut(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.nunitoSans(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold)),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.green,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: onTap,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedLabelStyle: GoogleFonts.nunitoSans(
            textStyle:
                const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        elevation: 1,
        items: const [
          BottomNavigationBarItem(
              label: "Home", icon: Icon(Icons.home_rounded)),
          BottomNavigationBarItem(
              label: "Nofitications",
              icon: Icon(Icons.notification_important_rounded)),
          BottomNavigationBarItem(
              label: "LogOut", icon: Icon(Icons.logout_rounded)),
        ],
      ),
    );
  }
}
