import 'package:apple_store/screens/my-profile/on_profile_tap.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../global_variables.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: priceColor,
      body: Stack(
        children: [
          profileBackGroundWidget(context),
          Positioned(
              right: MediaQuery.of(context).size.width / 2 - 50,
              top: 140,
              child: profileImageWidget(context)),
        ],
      ),
    );
  }

  Column profileBackGroundWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
        ),
        Flexible(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
                top: 100, bottom: 20, left: 40, right: 40),
            decoration: BoxDecoration(
                color: secundryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: profileOptions(),
          ),
        )
      ],
    );
  }

  Column profileOptions() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(16)),
          child: Text(
            "Change Information",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(16)),
          child: Text(
            "Change Password",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(16)),
          child: Text(
            "Your Orders",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(16)),
          child: Text(
            "Invite Friends",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
          ),
        ),
        Column(
          children: [
            Text(
              "Version 1.0.2",
              style: TextStyle(color: deActiveColor),
            ),
            Text(
              "Company Name",
              style: TextStyle(color: deActiveColor),
            )
          ],
        ),
        Container(
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(25)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Log Out  ",
                style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              Icon(
                Icons.power_settings_new,
                color: whiteColor,
              )
            ],
          ),
        )
      ],
    );
  }

  Column profileImageWidget(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const OnProfileTap();
            }));
          },
          child: Hero(
            tag: 'profile-image',
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://wallpaperaccess.com/full/19921.jpg",
                      ))),
            ),
          ),
        ),
        const Text(
          "Name",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
