import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/user_repository_impl.dart';
import '../domain/user_entity.dart';


final userProvider = FutureProvider<UserEntity>((ref) {
  final repo = UserRepositoryImpl();
  return repo.fetchUser();
});