import 'package:flutter/material.dart';

import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:routing_test/components/app/app.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());
  await Hive.initFlutter();
  await Hive.openBox<dynamic>('authStorage');
  runApp(const App());
}
