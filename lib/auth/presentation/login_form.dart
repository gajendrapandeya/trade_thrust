import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trade_thrust/components/email_field.dart';
import 'package:trade_thrust/components/password_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          _buildTextFormField('COMPANY', 'Please enter your company name'),
          const SizedBox(
            height: 16.0,
          ),
          const EmailTextInputField(hint: "Email", validate: true),
          const SizedBox(
            height: 16.0,
          ),
          const PasswordTextInputField(hint: "Password", validate: true),
        ],
      ),
    );
  }

  Widget _buildTextFormField(String hintText, String errorMessage,
      {TextInputType keyBoardType = TextInputType.text}) {
    return TextFormField(
      keyboardType: keyBoardType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          labelText: hintText,
          labelStyle: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 16.0,
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.5),
          )),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage;
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
