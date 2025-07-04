import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../routes/app_pages.dart';
import '../themes/app_theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    // ref.watch(fcmServiceProvider); // 앱 시작 시 푸시 초기화됨

    return MaterialApp.router(
      routerConfig: router,
      title: 'app',
      theme: AppTheme.lightTheme,
    );
  }
}
