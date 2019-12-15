import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

class CustomLine extends StatelessWidget {
  final double percentWidthLine;
  final double heightLine;
  final double topMargin;
  final double bottomMargin;


  const CustomLine({@required this.percentWidthLine, this.heightLine = 5, this.bottomMargin = 0, this.topMargin = 0});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: this.percentWidthLine,
      child: Container(
        color: CustomColors.mainSky,
        margin: EdgeInsets.only(top: this.topMargin, bottom: this.bottomMargin),
        height: this.heightLine,
      ),
    );
  }
}
