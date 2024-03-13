class Flavor {
  final String name;
  final bool isFavorite;

  Flavor({required this.name, this.isFavorite = false});

  Flavor copyWith({String? name, bool? isFavorite}) => Flavor(
      name: name ?? this.name, isFavorite: isFavorite ?? this.isFavorite);
}
