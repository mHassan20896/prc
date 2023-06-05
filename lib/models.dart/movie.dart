class Movie {
  final String url;
  final String title;
  final String description;
  final String director;
  final String producer;
  final DateTime releaseDate;
  final List<String> cast;

  const Movie({
    required this.cast,
    required this.description,
    required this.director,
    required this.producer,
    required this.releaseDate,
    required this.title,
    required this.url,
  });
}
