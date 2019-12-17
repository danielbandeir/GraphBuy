import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nubuy/app/app_module.dart';

void main() async {
  await DotEnv().load('.env');

  runApp(AppModule());
}
