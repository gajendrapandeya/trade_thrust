import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trade_thrust/core/presentation/tab_page_content.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'DASHBOARD',
            style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.black),
          bottom: TabBar(
              indicatorColor: Colors.grey.shade900,
              tabs: const [
            Tab(
              text: 'DAILY',
            ),
            Tab(
              text: 'WEEKLY',
            ),
            Tab(
              text: 'MONTHLY',
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            TabsPageContent(),
            TabsPageContent(),
            TabsPageContent(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.hammer,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.truck, color: Colors.white), label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.bell,
                  color: Colors.white,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
