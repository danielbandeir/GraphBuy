import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

class CustomRaisedButton extends StatefulWidget {
  final Function onPressedRaisedButton;
  final double distanceManyButton;
  final Color raisedButtonColor;
  final String raisedText;
  final Color raisedTextColor;
  final double raisedFontSize;
  final double widthRaised;

  const CustomRaisedButton(
      {@required this.onPressedRaisedButton,
      @required this.raisedText,
        this.widthRaised = .8,
      this.raisedButtonColor = CustomColors.mainGreen,
      this.distanceManyButton = 10,
      this.raisedTextColor = CustomColors.mainWhite,
      this.raisedFontSize = 18});

  @override
  _CustomRaisedButtonState createState() => _CustomRaisedButtonState();
}

class _CustomRaisedButtonState extends State<CustomRaisedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.distanceManyButton),
      child: RaisedButton(
        onPressed: widget.onPressedRaisedButton,
        color: widget.raisedButtonColor,
        child: Center(
          child: Text(
            widget.raisedText,
            style: TextStyle(
                color: widget.raisedTextColor,
                fontSize: widget.raisedFontSize),
          ),
        ),
      ),
    );
  }
}
