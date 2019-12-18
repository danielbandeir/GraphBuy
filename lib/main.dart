import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:nubuy/app/app_module.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  await DotEnv().load('.env');

  final applicationDirectory = await path_provider.getApplicationDocumentsDirectory();

  Hive.init(applicationDirectory.path);

  runApp(AppModule());
}
