import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_container.dart';

class DetailsSkillWidget extends StatelessWidget {
  final String repo;
  final String followers;
  final String followings;
  final String location;

  const DetailsSkillWidget({Key key, this.repo, this.followers, this.followings, this.location}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          style: GoogleFonts.nunito(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Flexible(
          child: Text(
            '+55 085 998124426',
            style: GoogleFonts.nunito(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Flexible(
          child: Text(
            'rafaelpaz86@gmail.com',
            style: GoogleFonts.nunito(
              fontSize: 11,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Flexible(
          child: Text(
            'Skils',
            style: GoogleFonts.nunito(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Dart',
          style: GoogleFonts.nunito(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        CustomContainer(
          height: 10,
          width: 100,
          colorOne: Colors.red[200],
          colorTwo: Colors.red[900],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Java',
          style: GoogleFonts.nunito(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        CustomContainer(
          height: 10,
          width: 80,
          colorOne: Colors.red[200],
          colorTwo: Colors.red[900],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Ruby',
          style: GoogleFonts.nunito(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        CustomContainer(
          height: 10,
          width: 50,
            colorOne: Colors.red[200],
            colorTwo: Colors.red[900],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Javascript',
          style: GoogleFonts.nunito(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        CustomContainer(
          height: 10,
          width: 60,
          colorOne: Colors.red[200],
          colorTwo: Colors.red[900],
        ),
        SizedBox(
          height: 5,
        ),
        Flexible(
          child: Text(
            'Frameworks',
            style: GoogleFonts.nunito(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Flutter',
          style: GoogleFonts.nunito(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        CustomContainer(
          height: 10,
          width: 100,
          colorOne:  Colors.lightBlueAccent,
          colorTwo: Colors.blue.withRed(900),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Spring/Springboot',
          style: GoogleFonts.nunito(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        CustomContainer(
          height: 10,
          width: 80,
          colorOne:  Colors.lightBlueAccent,
          colorTwo: Colors.blue.withRed(100),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Rails',
          style: GoogleFonts.nunito(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        CustomContainer(
          height: 10,
          width: 50,
          colorOne:  Colors.lightBlueAccent,
          colorTwo: Colors.blue.withRed(100),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Angular 6',
          style: GoogleFonts.nunito(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        CustomContainer(
          height: 10,
          width: 60,
          colorOne:  Colors.lightBlueAccent,
          colorTwo: Colors.blue.withRed(100),
        ),
        SizedBox(
          height: 5,
        ),
        FaIcon(FontAwesomeIcons.github),
        SizedBox(
          height: 5,
        ),
        Text(
          'Repositories',
          style: GoogleFonts.nunito(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          repo,
          style: GoogleFonts.nunito(fontSize: 10, color: Colors.grey),
        ),
        Text(
          'followers',
          style: GoogleFonts.nunito(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          followers,
          style: GoogleFonts.nunito(fontSize: 10, color: Colors.grey),
        ),
        Text(
          'following',
          style: GoogleFonts.nunito(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          followings,
          style: GoogleFonts.nunito(fontSize: 10, color: Colors.grey),
        ),
        Row(
          children: [
            FaIcon(FontAwesomeIcons.mapMarkerAlt, color: Colors.yellow,size: 15 ,),
            SizedBox(
              width: 3,
            ),
            Text(
              location,
              style: GoogleFonts.nunito(fontSize: 10, color: Colors.grey,),
            ),
          ],
        ),
      ],
    );
  }
}
