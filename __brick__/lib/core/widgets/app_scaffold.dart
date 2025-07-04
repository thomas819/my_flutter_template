import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../config/providers.dart';

class AppScaffold extends ConsumerWidget {
  final Widget child;

  const AppScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavProvider);
    final controller = ref.read(bottomNavProvider.notifier);

    // 👇 경로 상태에서 직접 AppBar 조건 설정
    final currentPath = controller.currentPath;
    final hideAppBar = currentPath == '/post';

    return Scaffold(
      appBar: hideAppBar ? null : AppBar(title: const Text('공통 AppBar')),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => controller.changeTab(index, context),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '전단지'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: '지도'),
        ],
      ),
    );
  }
}
