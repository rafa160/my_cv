import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaWidget extends StatelessWidget {

  final VoidCallback github;

  const SocialMediaWidget({Key key, this.github}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: github,
              child: FaIcon(FontAwesomeIcons.github),
            ),
            Spacer(),
            FaIcon(FontAwesomeIcons.instagram),
            Spacer(),
            FaIcon(FontAwesomeIcons.linkedin),
            Spacer(),
            FaIcon(FontAwesomeIcons.userAstronaut),
          ],
        ),
      ],
    );
  }
}
