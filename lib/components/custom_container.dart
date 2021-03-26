import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {

  final double height;
  final double width;
  final Color colorOne;
  final Color colorTwo;

  const CustomContainer({Key key, this.height, this.width, this.colorOne, this.colorTwo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(1.2, 2.2), //(x,y)
              blurRadius: 10.0,
            ),
          ],
        gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [colorOne, colorTwo],
      ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
    );
  }
}
