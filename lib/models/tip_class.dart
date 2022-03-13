class Tip {
  final String title;
  final String imageUrl;
  final String body;
  final bool isFavorite;
  Tip(
      {required this.title,
      required this.imageUrl,
      required this.body,
      this.isFavorite = false});
}
