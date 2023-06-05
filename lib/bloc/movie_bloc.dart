import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prc/models.dart/movie.dart';
import 'package:prc/repository/movie_repository.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc(this.repository) : super(MovieInitial()) {
    on<FetchMovieEvent>(_onFetchMovieEvent);
  }

  final MovieRepository repository;

  Future<void> _onFetchMovieEvent(
      FetchMovieEvent event, Emitter<MovieState> emit) async {
    emit(MovieLoading());
    final movies = await repository.getMovies();
    emit(MovieLoaded(movies));
  }
}
