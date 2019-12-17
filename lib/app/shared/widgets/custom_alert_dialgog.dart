import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/widgets/custom_content_dialog.dart';

void showDescription(BuildContext context, String title, double value, String description, String textRaised, Function onPressRaised) async {
  showModalBottomSheet(
    context: context,// user must tap button!
    builder: (BuildContext context) {
      return CustomContentDialog(
        title: title,
        value: value,
        description: description,
        raisedButtonText: textRaised,
        onPressedRaisedButton: onPressRaised,
      );
    },
  );
}
