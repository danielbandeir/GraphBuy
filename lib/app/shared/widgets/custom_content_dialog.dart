import 'package:flutter/material.dart';

class CustomContentDialog extends StatefulWidget {
  final String title;
  final double value;
  final String description;
  final double heightContent;
  final List<double> marginsAll;
  final double marginBetweenIconText;
  final List<double> marginsValueText;
  final double sizeDescription;

  const CustomContentDialog(
      {@required this.title,
      @required this.value,
      @required this.description,
      this.heightContent = 400,
      this.marginsAll = const <double>[40.0, 40.0, 30.0],
      this.marginBetweenIconText = 20,
      this.marginsValueText = const <double> [20, 20],
      this.sizeDescription = 150});

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
                padding: EdgeInsets.only(left: widget.marginBetweenIconText),
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
          )
        ],
      ),
    );
  }
}
