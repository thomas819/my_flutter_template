import '../domain/post_repository.dart';
import '../domain/post.dart';
import 'post_api.dart';

class PostRepositoryImpl implements PostRepository {
  final PostApi api;
  PostRepositoryImpl(this.api);

  @override
  Future<List<Post>> fetchPosts({
    String? storeId,
    bool excludeExpired = false,
    String? sort,
  }) {
    return api.fetchFlyers(
      storeId: storeId,
      excludeExpired: excludeExpired,
      sort: sort,
    );
  }

}
