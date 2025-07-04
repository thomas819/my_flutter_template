import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_client.dart';
import '../application/fetch_posts_usecase.dart';
import '../data/post_api.dart';
import '../data/post_repository_impl.dart';
import '../domain/post.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

final fetchPostsUseCaseProvider = Provider<FetchPostsUseCase>((ref) {
  final client = ref.read(apiClientProvider);
  final api = PostApi(client); // ✅ 의존성 주입
  final repo = PostRepositoryImpl(api);
  return FetchPostsUseCase(repo);
});
final postListProvider = FutureProvider<List<Post>>((ref) {
  return ref.read(fetchPostsUseCaseProvider)();
});
