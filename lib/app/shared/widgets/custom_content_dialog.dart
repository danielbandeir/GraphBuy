import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/widgets/custom_raised_button.dart';
import 'package:rxdart/subjects.dart';

class CustomContentDialog extends StatefulWidget {
  final String title;
  final int value;
  final String description;
  final String image;
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
  final int numberItems;

  const CustomContentDialog(
      {@required this.title,
      @required this.value,
        @required this.image,
      @required this.description,
      @required this.raisedButtonText,
      @required this.onPressedRaisedButton,
      raisedButtonColor,
      distanceManyButton,
      heightContent,
      distanceDescMany,
      marginsAll,
      marginIconText,
      marginsValueText,
      sizeDescription,
      numberItems})
      : heightContent = heightContent ?? 250,
        raisedButtonColor = raisedButtonColor ?? CustomColors.mainGreen,
        distanceManyButton = distanceManyButton ?? 10,
        distanceDescMany = distanceDescMany ?? 20,
        marginsAll = marginsAll ?? const <double>[40.0, 40.0, 30.0],
        marginIconText = marginIconText ?? 20,
        marginsValueText = marginsValueText ?? const <double>[20, 20],
        sizeDescription = sizeDescription ?? 70,
        numberItems = numberItems ?? 0;

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
                  child: CachedNetworkImage(
                    imageUrl: widget.image,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
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
