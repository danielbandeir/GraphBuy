import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

/// This is a custom widget for card that we'll use him like navigator,
/// this widget will try to solve all problems using assert
/// and putting default values to put less text into code of application
class CustomCard extends StatelessWidget {
  final double width;
  final Color cardColor;
  final String cardText;
  final double cardTextSize;
  final Color cardTextColor;
  final FontWeight cardTextWeight;
  final IconData cardIcon;
  final double cardIconSize;
  final Color cardIconColor;
  final double cardBorderRadius;

  const CustomCard(
      {this.width = 130,
      this.cardColor = CustomColors.mainSky,
      this.cardIconColor = CustomColors.mainWhite,
      this.cardIconSize = 25,
      @required this.cardIcon,
      @required this.cardText,
      this.cardTextSize = 18,
      this.cardTextWeight = FontWeight.bold,
      this.cardTextColor = CustomColors.mainWhite,
      this.cardBorderRadius = 20});

  @override
  Widget build(BuildContext context) {
    /// Check if height defined is less than height of context
    return FlatButton(
      onPressed: null,
      child: Container(
        width: this.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(this.cardBorderRadius),
          color: this.cardColor,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 20, right: 20),
              child: Align(
                alignment: FractionalOffset.topRight,
                child: Icon(
                  this.cardIcon,
                  color: this.cardIconColor,
                  size: this.cardIconSize,
                ),
              ),
            )),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(bottom: 20, left: 20),
              child: Align(
                alignment: FractionalOffset.bottomLeft,
                child: Text(
                  this.cardText,
                  style: TextStyle(
                      fontSize: this.cardTextSize,
                      color: this.cardTextColor,
                      fontWeight: this.cardTextWeight),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
