import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/help/help_module.dart';
import 'package:nubuy/app/modules/historic/historic_module.dart';
import 'package:nubuy/app/modules/home/home_module.dart';
import 'package:nubuy/app/modules/offer/offer_module.dart';

final Map<String, WidgetBuilder> routes = {
  '/home/main': (BuildContext context) => HomeModule(),
  '/offers/main': (BuildContext context) => OfferModule(),
  '/historic/main': (BuildContext context) => HistoricModule(),
  '/help/main': (BuildContext context) => HelpModule()
};

String get indexRoute => '/home/main';