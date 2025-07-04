import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/controllers/auth_controller.dart';
import '../core/controllers/theme_controller.dart';
import '../core/navigation/bottom_nav_controller.dart';
import '../core/network/api_client.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());


/// 2. Auth 상태 관리
// final authControllerProvider =
// StateNotifierProvider<AuthController, AuthState>(
//       (ref) => AuthController(),
// );

/// 3. 테마 전환 상태
final themeControllerProvider =
StateNotifierProvider<ThemeController, ThemeMode>(
      (ref) => ThemeController(),
);

/// 4. 하단탭 (bottom nav)
final bottomNavProvider =
StateNotifierProvider<BottomNavController, int>(
      (ref) => BottomNavController(),
);


// final fcmServiceProvider = Provider<FCMService>((ref) {
//   final service = FCMService();
//   service.init(); // 앱 시작 시 초기화
//   return service;
// });

// provider 연결 (config/providers/location_providers.dart 등)
// final locationServiceProvider = Provider((ref) => LocationService());