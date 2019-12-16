import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/widgets/custom_content_dialog.dart';

void showDescription(BuildContext context) async {
  showModalBottomSheet(
    context: context,// user must tap button!
    builder: (BuildContext context) {
      return CustomContentDialog();
    },
  );
}
