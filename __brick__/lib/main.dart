import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_now/routes/app_pages.dart';

import 'config/app.dart';
import 'config/config.dart';

void main() {
  AppConfig.init(AppFlavor.dev); // 또는 .prod, .staging
  runApp(const ProviderScope(child: MyApp()));
}
