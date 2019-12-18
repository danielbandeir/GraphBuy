import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

class MobileOffline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: CustomColors.mainWhite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 200,
          height: 100,
          child: Column(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  style: TextStyle(color: CustomColors.mainError, fontSize: 22),
                  children: <TextSpan> [
                    
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
