import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'PROFILE',
            style: GoogleFonts.nunito(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Focused, hard-working and go-getter.',
            style: GoogleFonts.nunito(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Employment History',
            style: GoogleFonts.nunito(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
