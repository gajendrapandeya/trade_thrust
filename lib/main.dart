import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_thrust/auth/presentation/login_page.dart';
import 'package:trade_thrust/dashboard/presentation/dashboard_page.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const LoginPage(),
    routes: {
      DashBoardPage.routeName: (ctx) => const DashBoardPage(),
    },
  ));
}
