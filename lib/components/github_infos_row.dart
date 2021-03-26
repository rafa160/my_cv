import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GithubInfosRow extends StatelessWidget {
  final String repo;
  final String followers;
  final String followings;

  const GithubInfosRow({Key key, this.repo, this.followers, this.followings}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Repositories',
              style: GoogleFonts.nunito(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              'followers',
              style: GoogleFonts.nunito(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              'following',
              style: GoogleFonts.nunito(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              repo,
              style: GoogleFonts.nunito(fontSize: 15, color: Colors.grey),
            ),
            Spacer(),
            Text(
             followers,
              style: GoogleFonts.nunito(fontSize: 15, color: Colors.grey),
            ),
            Spacer(),
            Text(
              followings,
              style: GoogleFonts.nunito(fontSize: 15, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
