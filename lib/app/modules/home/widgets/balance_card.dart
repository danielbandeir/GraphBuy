import 'package:flutter/material.dart';
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
                  FractionallySizedBox(
                    widthFactor: .5,
                    child: Container(
                      color: CustomColors.mainSky,
                      margin: EdgeInsets.only(top: 50),
                      height: 5,
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
