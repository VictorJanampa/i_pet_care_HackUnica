class Pet {
  final String petName;
  final String imageUrl;
  final String specie;
  final String petAge;
  final bool isFavorite;
  Pet(
      {required this.petName,
      required this.imageUrl,
      required this.specie,
      required this.petAge,
      this.isFavorite = false});
}
