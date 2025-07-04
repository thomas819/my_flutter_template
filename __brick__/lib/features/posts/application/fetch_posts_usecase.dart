import '../domain/post_repository.dart';
import '../domain/post.dart';

class FetchPostsUseCase {
  final PostRepository repo;
  FetchPostsUseCase(this.repo);

  /// 전단지를 조건에 따라 필터링/정렬하여 반환
  Future<List<Post>> call({
    String? storeId,
    bool excludeExpired = false,
    String? sort,
  }) {
    return repo.fetchPosts(
      storeId: storeId,
      excludeExpired: excludeExpired,
      sort: sort,
    );
  }
}
