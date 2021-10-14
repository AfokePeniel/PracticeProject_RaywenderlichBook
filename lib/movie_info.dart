import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'movie_details.dart';

class MovieInfo extends StatefulWidget {
  const MovieInfo({Key? key, required this.movieDetails}) : super(key: key);

  final MovieDetails movieDetails;

  @override
  _MovieInfoState createState() => _MovieInfoState();
}

class _MovieInfoState extends State<MovieInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black87,
        title: const Text(
          'Movie Information',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'IndieFlower',
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15.0))),
                  child: Image(
                    image: AssetImage(widget.movieDetails.imageUrl),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      widget.movieDetails.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'IndieFlower',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      widget.movieDetails.description,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'IndieFlower',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      widget.movieDetails.year,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'IndieFlower',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      width: 5,
                      color: Colors.white,
                    ),
                    shadowColor: Colors.white,
                    elevation: 5,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                  onPressed: () {
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          elevation: 5.0,
                          content: Text('Movie Downloaded'),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Download Movie',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IndieFlower',
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
