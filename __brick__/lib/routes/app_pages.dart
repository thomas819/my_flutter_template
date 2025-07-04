library app_pages;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/navigation/router_provider.dart';

part 'app_routes.dart'; // ⬅️ 경로 정의 따로 분리

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.home,
    routes: [
      mainRoutes
    ],
  );
});
