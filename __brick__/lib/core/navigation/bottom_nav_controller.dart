import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../routes/app_pages.dart';

class BottomNavController extends StateNotifier<int> {
  BottomNavController() : super(0);

  static const List<String> paths = [
    Routes.home,
    Routes.post,
    Routes.user,
  ];

  String get currentPath => paths[state];

  void changeTab(int index, BuildContext context) {
    if (index != state) {
      state = index;
      context.go(paths[index]);
    }
  }

  bool isActive(int index) => index == state;
}
