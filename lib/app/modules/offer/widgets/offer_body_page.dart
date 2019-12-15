import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/offer/widgets/offer_app_bar.dart';
import 'package:nubuy/app/modules/offer/widgets/offer_dialog.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/widgets/custom_app_bar.dart';
import 'package:nubuy/app/shared/widgets/custom_list_tile.dart';

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
        CustomAppBar(
          title: "Ofertas",

        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: CustomColors.thirdaryGrey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5),
              child: ListView(
                children: <Widget>[
                  CustomListTile(
                    onPressed: () => OfferDialog,
                    title: "Testando",
                    price: 500.0,
                  ),
                  CustomListTile(
                    onPressed: null,
                    title: "Testando",
                    price: 500.0,
                  ),
                  CustomListTile(
                    onPressed: null,
                    title: "Testando",
                    price: 500.0,
                  ),
                  CustomListTile(
                    onPressed: null,
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
