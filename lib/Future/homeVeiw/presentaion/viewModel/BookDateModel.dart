class BookDateModel {
  final String id;
  final String title;
  final List<String> authors;
  final String? thumbnail;
  final double? averageRating;
  final int? ratingsCount;
  final double? price;
  final String? currencyCode;
  final String? previewLink; // 👈 added this line

  BookDateModel({
    required this.id,
    required this.title,
    required this.authors,
    this.thumbnail,
    this.averageRating,
    this.ratingsCount,
    this.price,
    this.currencyCode,
    this.previewLink, // 👈 added this line
  });

  factory BookDateModel.fromJson(Map<String, dynamic> json) {
    final volumeInfo = json['volumeInfo'] ?? {};
    final saleInfo = json['saleInfo'] ?? {};
    final imageLinks = volumeInfo['imageLinks'] ?? {};

    return BookDateModel(
      id: json['id'] ?? '',
      title: volumeInfo['title'] ?? 'No Title',
      authors: (volumeInfo['authors'] as List<dynamic>?)
          ?.map((author) => author.toString())
          .toList() ??
          [],
      thumbnail: imageLinks['thumbnail'],
      averageRating: (volumeInfo['averageRating'] as num?)?.toDouble(),
      ratingsCount: volumeInfo['ratingsCount'],
      price: (saleInfo['listPrice'] != null)
          ? (saleInfo['listPrice']['amount'] as num?)?.toDouble()
          : null,
      currencyCode: saleInfo['listPrice']?['currencyCode'],
      previewLink: volumeInfo['previewLink'], // 👈 added this line
    );
  }
}
