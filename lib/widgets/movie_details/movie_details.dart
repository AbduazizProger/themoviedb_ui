import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/movie_details/movie_details_main_info.dart';
import 'package:themoviedb/widgets/movie_details/movie_details_main_screen.dart';

class MovieDetails extends StatefulWidget {
  final int movieId;
  const MovieDetails({super.key, required this.movieId});

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB'),
        centerTitle: true,
      ),
      body: ColoredBox(
        color: const Color.fromRGBO(24, 23, 27, 1.0),
        child: ListView(
          children: const [
            MoviDetailsMainInfo(),
            SizedBox(height: 30),
            MovieDetailsMainScreenCast(),
          ],
        ),
      ),
    );
  }
}
