import 'package:prc/models.dart/movie.dart';

class MovieRepository {
  Future<List<Movie>> getMovies() async {
    //  ccalled an API
    await Future.delayed(const Duration(seconds: 2));
    return [
      Movie(
        cast: ['Vin Deisal', 'Jason Momoa', 'Alan Ritchson'],
        description:
            'The family of IMDb users have opinions about the Fast & Furious franchise. See how they rank each of the nine films in the series (and one spin-off).',
        director: 'Rita Monero',
        producer: 'Michelle Rodriguez',
        releaseDate: DateTime(2021, 6, 25),
        title: 'Fast-X',
        url:
            'https://movies.universalpictures.com/media/02-fx-dm-mobile-banner-1080x745-pl-f01-031323-64108e7aa3468-1.jpg',
      ),
      Movie(
        cast: ['Vin Deisal', 'Jason Momoa', 'Alan Ritchson'],
        description:
            'The family of IMDb users have opinions about the Fast & Furious franchise. See how they rank each of the nine films in the series (and one spin-off).',
        director: 'Rita Monero',
        producer: 'Michelle Rodriguez',
        releaseDate: DateTime(2022, 6, 25),
        title: 'Dr Stanger',
        url:
            'https://upload.wikimedia.org/wikipedia/en/9/92/Doctor-Stranger.jpg',
      ),
    ];
  }
}
