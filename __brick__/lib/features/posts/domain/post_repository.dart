import 'post.dart';

abstract class PostRepository {
  Future<List<Post>> fetchPosts({
    String? storeId,
    bool excludeExpired,
    String? sort,
  });
}
