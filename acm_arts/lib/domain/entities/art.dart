class Art {
  final String id;
  final String? title;
  final String? author;
  final String? imageId;

  Art({
    required this.id,
    required this.title,
    required this.author,
    required this.imageId,
  });

  factory Art.fromMap(Map<String, dynamic> json) {
    final imageId = json['image_id'];

    return Art(
      id: json['id'].toString(),
      title: json['title'],
      author: json['artist_display'],
      imageId: 'https://www.artic.edu/iiif/2/$imageId/full/843,/0/default.jpg',
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'author': author,
        'imageId': imageId,
      };
}
