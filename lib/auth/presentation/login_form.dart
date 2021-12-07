import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildTextFormField('COMPANY', 'Please enter your company name'),
              const SizedBox(height: 16.0,),
              _buildTextFormField('Email', 'Please enter your password'),
              const SizedBox(height: 16.0,),
              _buildTextFormField('PASSWORD', 'Please enter your password',
                  keyBoardType: TextInputType.visiblePassword),
            ],
          )),
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
      ),
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
