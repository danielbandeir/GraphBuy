import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

class CartAppBar extends StatelessWidget {
  final double marginLeft;
  final double marginRight;
  final Color colorAppBar;
  final double heightAppBar;
  final Widget iconLeading;
  final Color iconLeadingColor;

  const CartAppBar({
    this.heightAppBar = 75,
    this.marginLeft = 20,
    this.marginRight = 20,
    this.colorAppBar = CustomColors.mainSky,
    this.iconLeading = const Icon(Icons.arrow_back),
    this.iconLeadingColor = CustomColors.mainWhite
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: this.heightAppBar,
      color: this.colorAppBar,
      child: Padding(
        padding: EdgeInsets.only(left: this.marginLeft, right: this.marginRight),
        child: Row(
        children: <Widget>[
          IconButton(
            icon: this.iconLeading,
            onPressed: () => Navigator.pop(context),
            color: this.iconLeadingColor,
          )
        ],
      ),
      ),
    );
  }
}