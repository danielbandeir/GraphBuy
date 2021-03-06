import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/widgets/custom_content_dialog.dart';

void showDescription(BuildContext context, String title, int value,
    String description, String image, String textRaised, Function onPressRaised,
    {double heightContent,
    List<double> marginsAll,
    double marginIconText,
    List<double> marginsValueText,
    double sizeDescription,
    double distanceManyButton,
    Color raisedButtonColor,
    double distancecDescMany,
    int numberItems,
    bool enableButton}) async {
  showModalBottomSheet(
    context: context, // user must tap button!
    builder: (BuildContext context) {
      return CustomContentDialog(
        title: title,
        value: value,
        image: image,
        description: description,
        raisedButtonText: textRaised,
        onPressedRaisedButton: onPressRaised,
        heightContent: heightContent,
        marginsAll: marginsAll,
        marginIconText: marginIconText,
        marginsValueText: marginsValueText,
        sizeDescription: sizeDescription,
        distanceManyButton: distanceManyButton,
        distanceDescMany: distancecDescMany,
        raisedButtonColor: raisedButtonColor,
        numberItems: numberItems,
        enableButton: enableButton,
      );
    },
  );
}
