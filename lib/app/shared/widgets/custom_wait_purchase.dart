import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/models/purchase.model.dart';
import 'package:nubuy/app/shared/widgets/custom_raised_button.dart';

class CustomWaitPurchase extends StatefulWidget {
  final Future<PurchaseModel> futureAwait;
  final Color customColor;
  final Color customSucessColor;
  final Icon customErrorIcon;
  final Icon customSucessIcon;
  final Color customErrorColor;
  final double distanceIconText;
  final double distanceTextButton;

  const CustomWaitPurchase(
      {@required this.futureAwait,
      this.customColor = CustomColors.mainGrey,
      this.customSucessColor = CustomColors.mainGreen,
      this.customErrorColor = CustomColors.mainError,
      this.customErrorIcon =
          const Icon(Icons.close, color: CustomColors.mainWhite, size: 32),
      this.customSucessIcon =
          const Icon(Icons.done, color: CustomColors.mainWhite, size: 32),
      this.distanceIconText = 15,
      this.distanceTextButton = 15});

  @override
  _CustomWaitPurchaseState createState() => _CustomWaitPurchaseState();
}

class _CustomWaitPurchaseState extends State<CustomWaitPurchase> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PurchaseModel>(
      future: widget.futureAwait,
      builder: (BuildContext context, snapshot) {
        if (!snapshot.hasData) {
          return Container(
            color: widget.customColor,
            child: Center(
              child: CircularProgressIndicator(
                valueColor:
                    const AlwaysStoppedAnimation<Color>(CustomColors.mainWhite),
              ),
            ),
          );
        } else {
          return Container(
            color: snapshot.data.success
                ? widget.customSucessColor
                : widget.customErrorColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                snapshot.data.success
                    ? widget.customSucessIcon
                    : widget.customErrorIcon,
                Padding(
                  padding: EdgeInsets.only(top: widget.distanceIconText, bottom: widget.distanceTextButton),
                  child: snapshot.data.success
                      ? Text("Success =D")
                      : Text(snapshot.data.errorMessage),
                ),
                CustomRaisedButton(
                  onPressedRaisedButton: () => print("Test"),
                  raisedText: "Ok",
                )
              ],
            ),
          );
        }
      },
    );
  }
}
