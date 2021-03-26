
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rafael_paz_resume_app/helpers/constants.dart';

class CustomToast {
  static success(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: textGreenAccent,
        textColor: textWhite,
        fontSize: 12.0);
  }

  static fail(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: redAccent,
        textColor: textWhite,
        fontSize: 12.0);
  }
}
