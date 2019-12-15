import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/home/widgets/balance_text_widget.dart';
import 'package:nubuy/app/modules/home/widgets/custom_line_widget.dart';
import 'package:nubuy/app/shared/colors.dart';

class BalanceCard extends StatefulWidget {
  @override
  _BalanceCardState createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
          child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: CustomColors.mainWhite,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 6.0,
                        color: CustomColors.mainShadow,
                        offset: Offset(0, 3))
                  ]),
              child: Column(
                children: <Widget>[
                  CustomLine(
                      percentWidthLine: .5, topMargin: 50, heightLine: 5),
                  BalacenTextWidget(),
                  CustomLine(
                      percentWidthLine: .7, heightLine: 5, bottomMargin: 50),
                ],
              ),
            ),
          )),
    );
  }
}
