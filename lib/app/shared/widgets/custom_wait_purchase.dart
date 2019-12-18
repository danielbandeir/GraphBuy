import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/models/purchase.model.dart';
import 'package:nubuy/app/shared/widgets/custom_raised_button.dart';

class CustomWaitPurchase extends StatefulWidget {
  final Future<PurchaseModel> futureAwait;
  final String routeNameRedirect;
  final Color customColor;
  final Color customSucessColor;
  final Color customColorButton;
  final Icon customErrorIcon;
  final Icon customSucessIcon;
  final Color customErrorColor;
  final double distanceIconText;
  final double distanceTextButton;
  final String confirmText;
  final TextStyle styleTextSucess;
  final TextStyle styleTextError;

  const CustomWaitPurchase(
      {@required this.futureAwait,
        @required this.routeNameRedirect,
      this.customColor = CustomColors.mainWhite,
        this.customColorButton = CustomColors.mainWhite,
      this.customSucessColor = CustomColors.mainGreen,
        this.confirmText = "Ok",
      this.customErrorColor = CustomColors.mainError,
      this.customErrorIcon =
          const Icon(Icons.close, color: CustomColors.mainWhite, size: 52),
      this.customSucessIcon =
          const Icon(Icons.done, color: CustomColors.mainWhite, size: 52),
      this.distanceIconText = 15,
      this.distanceTextButton = 15,
      this.styleTextSucess = const TextStyle(color: CustomColors.mainWhite, fontSize: 18),
        this.styleTextError = const TextStyle(color: CustomColors.mainWhite, fontSize: 18)});

  @override
  _CustomWaitPurchaseState createState() => _CustomWaitPurchaseState();
}

class _CustomWaitPurchaseState extends State<CustomWaitPurchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<PurchaseModel>(
        future: widget.futureAwait,
        builder: (BuildContext context, snapshot) {
          if (!snapshot.hasData) {
            return Container(
              color: widget.customColor,
              child: Center(
                child: CircularProgressIndicator(
                  valueColor:
                  const AlwaysStoppedAnimation<Color>(CustomColors.mainSky),
                ),
              ),
            );
          } else {
            return Container(
              height: double.infinity,
              color: snapshot.data.success
                  ? widget.customSucessColor
                  : widget.customErrorColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  snapshot.data.success
                      ? widget.customSucessIcon
                      : widget.customErrorIcon,
                  Padding(
                    padding: EdgeInsets.only(top: widget.distanceIconText, bottom: widget.distanceTextButton),
                    child: snapshot.data.success
                        ? Text("Success =D", style: widget.styleTextSucess)
                        : Text(snapshot.data.errorMessage, style: widget.styleTextError),
                  ),
                  ButtonTheme(
                    height: 50,
                    child: CustomRaisedButton(
                      onPressedRaisedButton: () => Navigator.pushReplacementNamed(context, widget.routeNameRedirect),
                      raisedButtonColor: widget.customColorButton,
                      raisedText: widget.confirmText,
                      raisedTextColor: snapshot.data.success
                          ? widget.customSucessColor
                          : widget.customErrorColor,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
