import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

class CustomAppBar extends StatefulWidget {
  final double marginLeft;
  final double marginRight;
  final Color colorAppBar;
  final double heightAppBar;
  final Widget iconLeading;
  final Color iconLeadingColor;
  final double marginInit;
  final String title;
  final Color titleColor;
  final double titleSize;
  final Widget iconButtonRedirect;

  CustomAppBar(
      {@required this.title,
      this.titleColor = CustomColors.mainWhite,
      this.titleSize = 22,
      this.heightAppBar = 75,
      this.marginLeft = 20,
      this.marginRight = 20,
      this.marginInit = 10,
      this.iconButtonRedirect,
      this.colorAppBar = CustomColors.mainSky,
      this.iconLeading = const Icon(Icons.arrow_back),
      this.iconLeadingColor = CustomColors.mainWhite})
      : assert(title != null);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.heightAppBar,
      color: widget.colorAppBar,
      child: Padding(
        padding:
            EdgeInsets.only(left: widget.marginLeft, right: widget.marginRight),
        child: Center(
          child: Row(
            children: <Widget>[
              IconButton(
                icon: widget.iconLeading,
                onPressed: () => Navigator.pop(context),
                color: widget.iconLeadingColor,
              ),
              Padding(
                padding: EdgeInsets.only(left: widget.marginInit),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      color: widget.titleColor, fontSize: widget.titleSize),
                ),
              ),
              Spacer(),
              widget.iconButtonRedirect,
            ],
          ),
        ),
      ),
    );
  }
}
