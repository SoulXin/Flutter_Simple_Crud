import 'package:flutter/foundation.dart';

enum Type { Movie, Episode }

class Anime {
  final String id;
  final List<String> genre;
  final String title;
  final String imageUrl;
  final String description;
  final Map information;
  final double rank;
  final Type type;
  final bool finish;

  const Anime({
    required this.id,
    required this.genre,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.information,
    required this.rank,
    required this.type,
    required this.finish,
  });
}
