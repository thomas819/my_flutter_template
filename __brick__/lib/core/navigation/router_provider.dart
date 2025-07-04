import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/widgets/app_scaffold.dart';
import '../../features/home/home_route.dart';
import '../../features/posts/post_route.dart';
import '../../features/posts/presentation/post_page.dart';
import '../../features/users/user_route.dart';

final mainRoutes = ShellRoute(
  builder: (context, state, child) => AppScaffold(child: child),
  routes: [
    ...homeRoutes,
    ...postRoutes,
    ...userRoutes
  ],
);
