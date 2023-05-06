import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';

import 'package:routing_test/components/app/app.dart';
import 'package:routing_test/components/app/routing/app_router.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('authStorage');
  AppRouter.init();
  runApp(const App());
}
