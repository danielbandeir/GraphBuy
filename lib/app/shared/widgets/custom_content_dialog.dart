import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/widgets/custom_raised_button.dart';

class CustomContentDialog extends StatefulWidget {
  final String title;
  final double value;
  final String description;
  final double heightContent;
  final List<double> marginsAll;
  final double marginIconText;
  final List<double> marginsValueText;
  final double sizeDescription;
  final String raisedButtonText;
  final Function onPressedRaisedButton;
  final double distanceManyButton;
  final Color raisedButtonColor;
  final double distanceDescMany;

  const CustomContentDialog(
      {@required this.title,
      @required this.value,
      @required this.description,
      @required this.raisedButtonText,
      @required this.onPressedRaisedButton,
      this.raisedButtonColor = CustomColors.mainGreen,
      this.distanceManyButton = 10,
      this.heightContent = 400,
      this.distanceDescMany = 20,
      this.marginsAll = const <double>[40.0, 40.0, 30.0],
      this.marginIconText = 20,
      this.marginsValueText = const <double> [20, 20],
      this.sizeDescription = 100}) : assert(heightContent >= 400);

  @override
  _CustomContentDialogState createState() => _CustomContentDialogState();
}

class _CustomContentDialogState extends State<CustomContentDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: widget.marginsAll[0],
          right: widget.marginsAll[1],
          top: widget.marginsAll[2]),
      width: double.infinity,
      height: widget.heightContent,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipOval(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: widget.marginIconText),
                child: Text(widget.title),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: widget.marginsValueText[0], bottom: widget.marginsValueText[1]),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(widget.value.toString()),
            ),
          ),
          Container(
            width: double.infinity,
            height: widget.sizeDescription,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Text(widget.description)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: widget.distanceDescMany),
            child: RaisedButton(
              onPressed: widget.onPressedRaisedButton,
              color: widget.raisedButtonColor,
              child: Center(
                child: Text(
                  "Salvar",
                  style: TextStyle(
                    color: CustomColors.mainWhite,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ),
          CustomRaisedButton(
            onPressedRaisedButton: widget.onPressedRaisedButton,
            raisedButtonText: widget.raisedButtonText,
            distanceManyButton: widget.distanceManyButton,
            raisedButtonColor: widget.raisedButtonColor,
          )
        ],
      ),
    );
  }
}
