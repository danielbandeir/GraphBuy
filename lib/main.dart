import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:internationalization/internationalization.dart';
import 'package:nubuy/app/app_module.dart';
import 'package:nubuy/app/shared/models/offers.model.dart';
import 'package:nubuy/app/shared/models/product.model.dart';
import 'package:nubuy/app/shared/models/user.model.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  await DotEnv().load('.env');

  await Internationalization.loadConfigurations();

  final applicationDirectory = await path_provider.getApplicationDocumentsDirectory();

  Hive.init(applicationDirectory.path);

  Hive.registerAdapter(UserModelAdapter(), 0);
  Hive.registerAdapter(OfferModelAdapter(), 1);
  Hive.registerAdapter(ProductModelAdapter(), 2);

  runApp(AppModule());
}
