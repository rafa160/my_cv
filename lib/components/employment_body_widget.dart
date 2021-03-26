import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class EmploymentBodyWidget extends StatelessWidget {
  final String tile;
  final String date;
  final String desc;
  final String project;

  const EmploymentBodyWidget(
      {Key key, this.tile, this.date, this.desc, this.project})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 2),
          child: Text(
            tile,
            style: GoogleFonts.nunito(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2, left: 14),
          child: Row(
            children: [
              Text(
                date,
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            desc,
            style: GoogleFonts.nunito(
              fontSize: 13,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            'Project Example',
            style: GoogleFonts.nunito(
                fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 2, bottom: 5),
          child: Text(
            project,
            style: GoogleFonts.nunito(
                fontSize: 13, color: Colors.black,),
          ),
        )
      ],
    );
  }
}
