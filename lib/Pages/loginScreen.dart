import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../TextField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 44, right: 42),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in',
                style: GoogleFonts.aBeeZee(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 60,
              ),
              const Textfield(text: 'First Name'),
              const SizedBox(height: 35),
              const Textfield(text: 'Last Name'),
              const SizedBox(height: 35),
              const Textfield(text: 'Email'),
              const SizedBox(height: 35),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Already have an account.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Log in'),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/image/Vector.svg'),
                  ),
                  SizedBox(width: 11.17),
                  Text(
                    'Sign in with Google',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/image/apple.svg'),
                  ),
                  SizedBox(
                    width: 11.17,
                  ),
                  Text(
                    'Sign in with  Apple',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
