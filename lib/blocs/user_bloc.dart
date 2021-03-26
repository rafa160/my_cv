import 'dart:convert';


import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:http/http.dart' as http;
import 'package:rafael_paz_resume_app/components/custom_toast.dart';
import 'package:rafael_paz_resume_app/models/user_models.dart';
import 'package:rafael_paz_resume_app/service/github_api.dart';

class UserBloc extends BlocBase {

  UserModel userModel;

  Future<UserModel> getMyProfile() async {
    var result = await http.get("${GitHubApi.repoUserRoute}");

    if (result.statusCode != 200) {
      CustomToast.fail('Failed to Find This User or it Doesnt exist.');
      return null;
    }

    var user = json.decode(result.body);
    userModel = UserModel.fromJson(user);
    return UserModel.fromJson(user);
  }
}