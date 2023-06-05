part of 'movie_bloc.dart';

abstract class MovieState extends Equatable {}

class MovieInitial extends MovieState {
  @override
  List<Object> get props => [];
}

class MovieLoaded extends MovieState {
  MovieLoaded(this.movies);
  final List<Movie> movies;

  @override
  List<Object?> get props => [movies];
}

class MovieLoading extends MovieState {
  @override
  List<Object> get props => [];
}
