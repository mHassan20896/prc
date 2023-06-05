import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prc/bloc/movie_bloc.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(
      builder: (context, state) {
        if (state is MovieInitial) {
          context.read<MovieBloc>().add(FetchMovieEvent());
        }
        if (state is MovieLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is MovieLoaded) {
          return ListView.builder(
            itemCount: state.movies.length,
            itemBuilder: (context, index) {
              return Text(state.movies[index].title);
            },
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: Text("jkfhsdkjfl./l"),
          ),
        );
      },
    );
  }
}
