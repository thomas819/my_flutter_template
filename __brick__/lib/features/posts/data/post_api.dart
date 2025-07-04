import '../../../core/network/api_client.dart';
import '../domain/post.dart';

class PostApi {
  final ApiClient _client;
  PostApi(this._client); // ← 의존성 주입

  Future<List<Post>> fetchFlyers({
    String? storeId,
    bool excludeExpired = false,
    String? sort, // rating, recent 등
  }) async {
    final query = <String, dynamic>{};

    if (storeId != null) query['store_id'] = storeId;
    if (excludeExpired) query['exclude_expired'] = true;
    if (sort != null) query['sort'] = sort;

    final response = await _client.get('/flyers', query: query);
    final data = response.data?['items'] ?? [];

    return List<Map<String, dynamic>>.from(data)
        .map((e) => Post.fromJson(e))
        .toList();
  }

}
