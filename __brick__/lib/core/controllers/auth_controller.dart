import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthController extends StateNotifier<bool> {
  AuthController() : super(false);

  void login() => state = true;
  void logout() => state = false;
}

final authProvider = StateNotifierProvider<AuthController, bool>(
  (ref) => AuthController(),
);
