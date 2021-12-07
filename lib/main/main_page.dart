import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trade_thrust/core/domain/drawer_item.dart';
import 'package:trade_thrust/dashboard/presentation/dashboard_page.dart';
import 'package:collection/collection.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<DrawerItem> drawerItems = [
    DrawerItem(iconData: MdiIcons.clockTimeNineOutline, itemName: 'DASHBOARD'),
    DrawerItem(iconData: MdiIcons.calendarMonth, itemName: 'CALENDAR'),
    DrawerItem(iconData: MdiIcons.hammer, itemName: 'TASKS'),
    DrawerItem(iconData: MdiIcons.mapSearch, itemName: 'BITS'),
    DrawerItem(iconData: MdiIcons.mapMarker, itemName: 'ENTITIES'),
    DrawerItem(iconData: MdiIcons.mapMarkerStar, itemName: 'PROSPECTS'),
    DrawerItem(iconData: MdiIcons.squareCircle, itemName: 'OUTSTANDING'),
    DrawerItem(iconData: MdiIcons.rvTruck, itemName: 'INVENTORY TRACKING'),
    DrawerItem(iconData: MdiIcons.gift, itemName: 'SCHEMES'),
    DrawerItem(iconData: MdiIcons.commentTextMultiple, itemName: 'COMMENTS'),
    DrawerItem(iconData: MdiIcons.bell, itemName: 'NOTIFICATIONS'),
    DrawerItem(iconData: MdiIcons.cog, itemName: 'SETTINGS'),
    DrawerItem(iconData: MdiIcons.logout, itemName: 'LOGOUT'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.black),
        title: Text(
          drawerItems[_selectedIndex].itemName,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              _createHeader(),
              Divider(
                color: Colors.grey.shade800,
              ),
              ...drawerItems
                  .mapIndexed((index, item) =>
                  InkWell(
                    onTap: () =>
                        setState(() {
                          _selectedIndex = index;
                        }),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(8.0), topRight
                              : Radius.circular(8.0),),
                          color: _selectedIndex == index
                              ? Colors.grey.shade500
                              : Colors.black
                      ),
                      child: ListTile(
                        horizontalTitleGap: -2.0,
                        minVerticalPadding: 0.0,
                        leading: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Icon(
                            item.iconData,
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                        title: Align(
                          alignment: const Alignment(-1, -1),
                          child: Text(
                            item.itemName,
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 12.0),
                          ),
                        ),
                      ),
                    ),
                  ))
                  .toList()
            ],
          ),
        ),
      ),
      body: const DashBoardPage(),
    );
  }

  Widget _createHeader() {
    return Container(
      height: 250.0,
      padding: const EdgeInsets.only(top: 32.0),
      child: DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.grey.shade800,
                    child: Text(
                      'A',
                      style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                      bottom: -10.0,
                      right: -14.0,
                      child: IconButton(
                        icon: const Icon(
                          MdiIcons.camera,
                          color: Colors.white,
                          size: 18.0,
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                'Aman Suwal',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 14.0),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                'FOS',
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade600, fontSize: 12.0),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                'gajendra',
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade600, fontSize: 12.0),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                'aman@demo.com',
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade600, fontSize: 12.0),
              ),
            ],
          )),
    );
  }
}
