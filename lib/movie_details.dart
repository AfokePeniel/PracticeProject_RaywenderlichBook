class MovieDetails
{
  String imageUrl;
  String title;
  String description;
  String year;

  MovieDetails(
      this.imageUrl,
      this.title,
      this.description,
      this.year,
      );
  static List<MovieDetails> details =
      [
        MovieDetails(
            'assets/blackwidow2.jpg', 'Title : BlackWidow', 'Description : this is a good movie' , 'Year: 1995',
        ),
        MovieDetails(
          'assets/citation.jpg', ' Title : Citation', 'Description : this is a good movie' , 'Year: 1995',
        ),
        MovieDetails(
          'assets/devildeadline2.png', 'Title : DevilDeadline', 'Description : this is a good movie' , 'Year: 1995',
        ),
        MovieDetails(
          'assets/gift2.jpg', 'Title : Gift' , 'Description : this is a good movie' , 'Year: 1995' ,
        ),
        MovieDetails(
          'assets/music.png', 'Title : Music','Description : this is a good movie' , 'Year: 1995',
        ),
        MovieDetails(
          'assets/nest.jpg', 'Title : Nest', 'Description: this is a good movie' , 'Year: 1995' ,
        ),
        MovieDetails(
          'assets/prom.jpg', 'Title : Prom', 'Description : this is a good movie' , 'Year: 1995' ,
        ),
        MovieDetails(
          'assets/tenet.jpg', 'Title : Tenet', 'Description : this is a good movie' , 'Year: 1995',
        ),
        MovieDetails(
          'assets/Witches.png', 'Title : Witches', 'Description : this is a good movie' , 'Year: 1995' ,
        ),

      ];

}