import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_thrust/auth/presentation/login_form.dart';
import 'package:trade_thrust/dashboard/presentation/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100.0,),
              Image.asset(
                'assets/icon/img.png',
                height: 130.0,
                width: 200.0,
              ),
              const SizedBox(height: 60.0,),
              const LoginForm(),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed(DashBoardPage.routeName),
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(32.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey.shade600
                  ),
                  child:  Text(
                    'LOGIN',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
