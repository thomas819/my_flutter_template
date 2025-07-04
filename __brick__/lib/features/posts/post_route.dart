import 'package:go_router/go_router.dart';
import 'presentation/post_page.dart';

final postRoutes = [
  GoRoute(
    path: '/post',
    name: 'post',
    // builder: (context, state) => const PostPage(),
    pageBuilder: (context, state) =>
    const NoTransitionPage(child: PostPage()),
  ),
];
