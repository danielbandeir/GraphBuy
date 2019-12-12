import 'package:flutter/material.dart';
import 'package:nu_buy/app/shared/colors.dart';

/// This is a custom widget for card that we'll use him like navigator, 
/// this widget will try to solve all problems using assert
/// and putting default values to put less text into code of application
class CustomCard extends StatelessWidget {
  final double width;
  final double height;
  final Color cardColor;
  final Text cardText;
  final Icon cardIcon;
  final double cardBorderRadius;

  const CustomCard({this.height = 125, this.width = 150, this.cardColor = CustomColors.mainSky, this.cardText, this.cardBorderRadius = 20, this.cardIcon});

  @override
  Widget build(BuildContext context) {
    /// Check if height defined is less than height of context
    assert(height < MediaQuery.of(context).size.height);
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(this.cardBorderRadius),
        color: this.cardColor,
      ),
      child: Column(
        children: <Widget>[
          Flexible(
            child: this.cardIcon,
          ),
          Flexible(
            child: this.cardText,
          )
        ],
      ),
    );
  }
}