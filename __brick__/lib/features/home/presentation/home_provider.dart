import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/home_repository_impl.dart';
import '../domain/home_entity.dart';


final homeProvider = FutureProvider<HomeEntity>((ref) {
  final repo = HomeRepositoryImpl();
  return repo.fetchHomeData();
});