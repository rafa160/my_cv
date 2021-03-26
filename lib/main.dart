import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rafael_paz_resume_app/blocs/user_bloc.dart';
import 'package:rafael_paz_resume_app/screens/home_screen.dart';

void main() {
  runApp(BlocProvider(
    blocs: [
      Bloc((i) => UserBloc()),

    ],
    child: GetMaterialApp(
      title: "Rafa's Resume",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  ));
}