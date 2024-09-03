import 'package:commerce/core/config/config.dart';
import 'package:flutter/material.dart';
import 'app.dart';

Future<void> main() async {
  await DependencyInjection.init();
  runApp(const RootApp());
}
