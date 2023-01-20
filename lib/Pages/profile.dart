import 'package:emerge/profile_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          'profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(left: 44, right: 42, top: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image(
                    image: AssetImage("assets/image/scenery.png"),
                  ),
                ),
              ),
              // CircleAvatar(
              //   radius: 50,
              //   child: ClipOval(
              //     child: Center(
              //       child: Image.asset('assets/image/scenery.png',
              //       fit: BoxFit.fitHeight),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 5.94),
              Text(
                'Change photo',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 17),
              Text(
                'Satria Adhi Pradana',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 36),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 11),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.file_upload_outlined),
                      const SizedBox(width: 21.5),
                      Text(
                        'Upload item',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 26),
              const ListInProfile(
                iconLeft: Icon(Icons.indeterminate_check_box_outlined),
                name: 'Trade Store',
                iconRight: Icon(Icons.arrow_forward_ios_outlined),
              ),
              const SizedBox(height: 37),
              const ListInProfile(
                iconLeft: Icon(Icons.indeterminate_check_box_outlined),
                name: 'Payment Method',
                iconRight: Icon(Icons.arrow_forward_ios_outlined),
              ),
              const SizedBox(height: 37),
              Row(
                children: [
                  const Icon(Icons.indeterminate_check_box_outlined),
                  const SizedBox(width: 15),
                  Text(
                    'Balance',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  const Text(
                    '\$1593',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 37),
              const ListInProfile(
                iconLeft: Icon(Icons.indeterminate_check_box_outlined),
                name: 'Trade History',
                iconRight: Icon(Icons.arrow_forward_ios_outlined),
              ),
              const SizedBox(height: 37),
              const ListInProfile(
                iconLeft: Icon(Icons.refresh),
                name: 'Trade History',
                iconRight: Icon(Icons.arrow_forward_ios_outlined),
              ),
              const SizedBox(height: 37),
              Row(
                children: [
                  const Icon(Icons.help_outline),
                  const SizedBox(width: 15),
                  Text(
                    'Help',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 37),
              Row(
                children: [
                  const Icon(Icons.login),
                  const SizedBox(width: 15),
                  Text(
                    'Log out',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
