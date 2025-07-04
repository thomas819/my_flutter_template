import 'package:go_router/go_router.dart';
import 'presentation/user_page.dart';

final userRoutes = [
  GoRoute(
    path: '/user',
    name: 'user',
    builder: (context, state) => const UserPage(),
  ),
];