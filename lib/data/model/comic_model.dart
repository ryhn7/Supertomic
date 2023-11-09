class ComicModel {
  String coverImage;
  String title;
  String author;
  double rating;
  String publisherImage;
  String mainCharacter;
  String alias;
  String synopsis;

  ComicModel({
    required this.coverImage,
    required this.title,
    required this.author,
    required this.rating,
    required this.publisherImage,
    required this.mainCharacter,
    required this.alias,
    required this.synopsis,
  });
}

var comicModelList = [
  ComicModel(
      coverImage: 'assets/images/comics/superman_unchained.jpg',
      title: 'Superman Vol. 5: Under Fire',
      author: 'Scott Lobdell',
      rating: 4.4,
      publisherImage: 'assets/images/dc_logo.png',
      mainCharacter: 'Superman',
      alias: 'Clark Kent',
      synopsis:
          'In the wake of the Psi War, Lois Lane lies in a deep coma, unable to speak, but her new found powers allow her to astral project in times of need. It is just this power that brings the power hungry creature Parasite to Metropolis in search of Lois. Is there anything The Man of Steel can do, or will he lose his best friend? The Man of Steel faces villains attacking Metropolis from all sides in SUPERMAN VOL. 5.'),
  ComicModel(
      coverImage: 'assets/images/comics/untold_spiderman.jpg',
      title: 'Untold Tales of Spider-Man',
      author: 'Kurt Busiek',
      rating: 4.7,
      publisherImage: 'assets/images/marvel_logo.png',
      mainCharacter: 'Spider-Man',
      alias: 'Peter Parker',
      synopsis:
          'Spider-Man clashes with the Scorcher, a tech-thieving villain, but public sentiment turns against him due to negative media. Peter Parker grapples with high school, financial strains at home, and the pressures of his secret life. Despite his heroics at a chemical warehouse, the police berate him, misunderstanding his intentions. Stricken with a cold and underappreciated, Peter yearns for simpler times and some recognition for his sacrifices.'),
  ComicModel(
      coverImage: 'assets/images/comics/detective_comics.jpg',
      title: 'Batman Detective Comics "#1000"',
      author: 'Geoff Johns',
      rating: 4.7,
      publisherImage: 'assets/images/dc_logo.png',
      mainCharacter: 'Batman',
      alias: 'Bruce Wayne',
      synopsis:
          'Who is under the mask? And why do they want Batman dead? The incredible future of Batman adventures begins here!'),
  ComicModel(
      coverImage: 'assets/images/comics/thor.jpg',
      title: 'Thor: First Thunder (2010) "#1',
      author: 'Bryan J.L. Glass',
      rating: 4.4,
      publisherImage: 'assets/images/marvel_logo.png',
      mainCharacter: 'Thor',
      alias: 'Thor Odinson',
      synopsis:
          'Revealed for a new generation: the origin - and first year on Earth - of the God of Thunder! Who is the enigmatic Doctor Donald Blake? What is the secret that drives him to travel the world, seeking its challenges, and how does it connect him to the banished Prince of Asgard? '),
  ComicModel(
      coverImage: 'assets/images/comics/wonder_woman.jpg',
      title: 'Wonder Woman Devastation Returns Part III: Initiation',
      author: 'Scott Lobdell',
      rating: 4.4,
      publisherImage: 'assets/images/dc_logo.png',
      mainCharacter: 'Wonder Woman',
      alias: 'Diana Prince',
      synopsis:
          'Wonder Girl and Wonder Woman finally overcome the power of Deva\'s illusions and put the godling down (maybe even for good), but Cassie\'s trust in Diana may not survive the ordeal.'),
  ComicModel(
      coverImage: 'assets/images/comics/civil_war.jpg',
      title: 'Avengers: Civil War',
      author: 'Mark Millar',
      rating: 4.8,
      publisherImage: 'assets/images/marvel_logo.png',
      mainCharacter: 'Captain America',
      alias: 'Steve Roger',
      synopsis:
          'The plot begins when the U.S. government passes a Superhero Registration Act, ostensibly to have super-powered individuals act under official regulation, somewhat akin to law enforcement. Superheroes who oppose the act, led by Captain America, find themselves in conflict with its supporters, led by Iron Man'),
];
