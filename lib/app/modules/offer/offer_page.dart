import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/offer/widgets/offer_body_page.dart';
import 'package:nubuy/app/shared/colors.dart';

class OfferPage extends StatefulWidget {
  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainSky,
      body: OfferBodyPage(),
    );
  }
}
