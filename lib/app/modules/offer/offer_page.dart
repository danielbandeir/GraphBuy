import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nubuy/app/modules/offer/widgets/offer_body_page.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/widgets/mobile_offline.dart';

class OfferPage extends StatefulWidget {
  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Hive.openBox('historic'),
      builder: (BuildContext context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
          backgroundColor: CustomColors.mainSky,
          body: StreamBuilder<ConnectivityResult>(
            stream: Connectivity().onConnectivityChanged,
            builder: (BuildContext context,
                AsyncSnapshot<ConnectivityResult> snapshot) {
              return snapshot.data != ConnectivityResult.none
                  ? OfferBodyPage()
                  : MobileOffline();
            },
          ),
        );
        } else {
          return Scaffold();
        }
      },
    );
  }
}
