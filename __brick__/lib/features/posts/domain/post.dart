
class Post {
  final String id;
  final String storeId;
  final String title;
  final String? content;
  final String? imageUrl;
  final DateTime validFrom;
  final DateTime validTo;
  final String? discountDetails;
  final String? menuItems;
  final double? reviewRating;
  final int? reviewCount;
  final int distributionDistance;
  final int distributionAngle;
  final DateTime createdAt;

  Post({
    required this.id,
    required this.storeId,
    required this.title,
    this.content,
    this.imageUrl,
    required this.validFrom,
    required this.validTo,
    this.discountDetails,
    this.menuItems,
    this.reviewRating,
    this.reviewCount,
    required this.distributionDistance,
    required this.distributionAngle,
    required this.createdAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      storeId: json['store_id'],
      title: json['title'],
      content: json['content'],
      imageUrl: json['image_url'],
      validFrom: DateTime.parse(json['valid_from']),
      validTo: DateTime.parse(json['valid_to']),
      discountDetails: json['discount_details'],
      menuItems: json['menu_items'],
      reviewRating: (json['review_rating'] as num?)?.toDouble(),
      reviewCount: json['review_count'],
      distributionDistance: json['distribution_distance'] ?? 1000,
      distributionAngle: json['distribution_angle'] ?? 90,
      createdAt: DateTime.parse(json['created_at']),
    );
  }
}
