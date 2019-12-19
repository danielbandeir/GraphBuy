import 'package:flutter/material.dart';
import 'package:internationalization/internationalization.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/widgets/custom_app_bar.dart';

class MobileOffline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.mainWhite,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          CustomAppBar(
            title: Strings.of(context).valueOf('error'),
            colorAppBar: CustomColors.mainWhite,
            iconLeadingColor: CustomColors.mainBlack,
            iconButtonRedirect: Spacer(),
            titleColor: CustomColors.mainBlack,
          ),
          Expanded(
            child: Container(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.warning, color: CustomColors.mainError),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(Strings.of(context).valueOf('conection-error'),
                        style: TextStyle(color: CustomColors.mainError)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(Strings.of(context).valueOf('verify-conection'),
                        style: TextStyle(color: CustomColors.mainError)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
