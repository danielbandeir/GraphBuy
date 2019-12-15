import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/offer/widgets/offer_app_bar.dart';
import 'package:nubuy/app/modules/offer/widgets/offer_list_tile.dart';
import 'package:nubuy/app/shared/colors.dart';

class OfferBodyPage extends StatefulWidget {
  @override
  _OfferBodyPageState createState() => _OfferBodyPageState();
}

class _OfferBodyPageState extends State<OfferBodyPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        OfferAppBar(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: CustomColors.thirdaryGrey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: ListView(
                children: <Widget>[
                  OfferListTile(
                    onPressed: () {
                      
                    }),
                    title: "Testando",
                    price: 500.0,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}