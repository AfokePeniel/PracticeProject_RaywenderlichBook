import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/movie_details.dart';
import 'package:movie_app/movie_info.dart';

class Movies extends StatefulWidget {
  const Movies({
    Key? key,
  }) : super(key: key);
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black87,
        title: const Text(
          'Movie Selection',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'IndieFlower',
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 3,
          padding: const EdgeInsets.all(8),
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: List.generate(9, (index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MovieInfo(
                              movieDetails: MovieDetails.details[index])));
                },
                child: BuildMovieDetailsCard(
                    movieDetails: MovieDetails.details[index]));
          }),
        ),
      ),
    );
  }
}

class BuildMovieDetailsCard extends StatelessWidget {
  const BuildMovieDetailsCard({Key? key, required this.movieDetails})
      : super(key: key);

  final MovieDetails movieDetails;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black87,
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Image(
                      image: AssetImage(
                    movieDetails.imageUrl,
                  ))),
              const SizedBox(
                height: 5.0,
              ),
            ],
          )),
    );
  }
}
