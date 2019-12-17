import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/widgets/custom_raised_button.dart';
import 'package:rxdart/subjects.dart';

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
  final int seededBloc;

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
      this.marginsValueText = const <double>[20, 20],
      this.sizeDescription = 100,
      this.seededBloc = 0})
      : assert(heightContent >= 400);

  @override
  _CustomContentDialogState createState() => _CustomContentDialogState();
}

class _CustomContentDialogState extends State<CustomContentDialog> {
  BehaviorSubject<int> valueNumbers;

  @override
  void dispose() {
    valueNumbers.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  valueNumbers = new BehaviorSubject<int>.seeded(widget.seededBloc);

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
            padding: EdgeInsets.only(
                top: widget.marginsValueText[0],
                bottom: widget.marginsValueText[1]),
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
              children: <Widget>[Text(widget.description)],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: widget.distanceDescMany),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () => valueNumbers.add(valueNumbers.value - 1),
                  icon: Icon(Icons.remove, size: 32),
                ),
                Container(
                  height: 30,
                  child: StreamBuilder<int>(
                    stream: valueNumbers.stream,
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      return Text(
                        snapshot.data.toString(),
                        style: TextStyle(
                          fontSize: 23
                        ),
                      );
                    },
                  ),
                ),
                IconButton(
                  onPressed: () => valueNumbers.add(valueNumbers.value + 1),
                  icon: Icon(Icons.add, size: 32),
                )
              ],
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
