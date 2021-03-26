import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rafael_paz_resume_app/blocs/user_bloc.dart';
import 'package:rafael_paz_resume_app/components/cached_image.dart';
import 'package:rafael_paz_resume_app/components/details_skill_widget.dart';
import 'package:rafael_paz_resume_app/components/employment_body_widget.dart';
import 'package:rafael_paz_resume_app/components/github_infos_row.dart';
import 'package:rafael_paz_resume_app/components/profile_header_widget.dart';
import 'package:rafael_paz_resume_app/components/social_midia_widget.dart';
import 'package:rafael_paz_resume_app/helpers/strings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userBloc = BlocProvider.getBloc<UserBloc>();

  List<Map<String, String>> employmentHistory = [
    {
      'title': Strings.ANDURIL_TITLE,
      'date': Strings.ANDURIL_DATE,
      'description': Strings.ANDURIL_DESCRIPTION,
      'project': Strings.ANDURIL_PROJECT,
    },
    {
      'title': Strings.MONITORA_TITLE,
      'date': Strings.MONITORA_DATE,
      'description': Strings.MONITORA_DESCRIPTION,
      'project': Strings.MONITORA_PROJECT,
    },
    {
      'title': Strings.AHAZOU_TITLE,
      'date': Strings.AHAZOU_DATE,
      'description': Strings.AHAZOU_DESCRIPTION,
      'project': Strings.MONITORA_PROJECT,
    },
    {
      'title': Strings.INFINITY_LABS_TITLE,
      'date': Strings.INFINITY_LABS_DATE,
      'description': Strings.INFINITY_LABS_DESCRIPTION,
      'project': Strings.INFINITY_LABS_PROJECT,
    },
    {
      'title': Strings.INFARMA_TITLE,
      'date': Strings.INFARMA_DATE,
      'description': Strings.INFARMA_DESCRIPTION,
      'project': Strings.INFARMA_PROJECT
    }
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: FutureBuilder(
              future: userBloc.getMyProfile(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                  case ConnectionState.none:
                    return Container(
                        child: Center(child: CircularProgressIndicator()));
                  default:
                    if (snapshot.hasError) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: ScreenUtil.screenHeight * 0.25,
                              color: Colors.black,
                            ),
                            Positioned(
                              top: 30,
                              bottom: 10,
                              left: ScreenUtil.screenWidth * 0.41,
                              child: Container(
                                height: ScreenUtil.screenHeight * 0.1,
                                width: ScreenUtil.screenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'RAFAEL',
                                      style: GoogleFonts.nunito(
                                          fontSize: 25,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'SIMÕES PAZ',
                                      style: GoogleFonts.nunito(
                                          fontSize: 25,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 1),
                                      child: Text(
                                        'Flutter Developer',
                                        style: GoogleFonts.nunito(
                                          fontSize: 17,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: ScreenUtil.screenHeight * 0.17,
                              child: Container(
                                width: ScreenUtil.screenWidth,
                                height: ScreenUtil.screenHeight * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.2, 1.0), //(x,y)
                                      blurRadius: 10.0,
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 20,
                                      left: ScreenUtil.screenWidth * 0.40,
                                      child: Container(
                                        width: ScreenUtil.screenWidth * 0.48,
                                        child: Center(child: SocialMediaWidget(
                                          github: () async {

                                          },
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: ScreenUtil.screenHeight * 0.01,
                              left: ScreenUtil.screenWidth * 0.04,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 70,
                                  backgroundColor: Colors.white,
                                  child: Center(
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          child: CustomCachedImage(
                                              userBloc.userModel.avatarUrl)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Row(
                            children: [
                              Container(
                                  height: ScreenUtil.screenHeight * 1,
                                  width: ScreenUtil.screenWidth * 0.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ProfileHeaderWidget(),
                                      Flexible(
                                        child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: employmentHistory.length,
                                            itemBuilder: (context, index) =>
                                                EmploymentBodyWidget(
                                                  tile: employmentHistory[index]
                                                      ['title'],
                                                  date: employmentHistory[index]
                                                      ['date'],
                                                  desc: employmentHistory[index]
                                                      ['description'],
                                                  project:
                                                      employmentHistory[index]
                                                          ['project'],
                                                )),
                                      ),
                                    ],
                                  )),
                              Container(
                                height: ScreenUtil.screenHeight,
                                width: ScreenUtil.screenWidth * 0.29,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 22),
                                  child:  DetailsSkillWidget(
                                    repo: userBloc.userModel.publicRepo.toString(),
                                    followers: userBloc.userModel.followers.toString(),
                                    followings: userBloc.userModel.followings.toString(),
                                    location: userBloc.userModel.location,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                }
              }),
        ),
      ),
    );
  }
}
