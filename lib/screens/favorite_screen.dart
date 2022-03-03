import 'package:flutter/material.dart';
import '../models/anime.dart';
import '../widgets/anime_item.dart';

class FavoriteScreen extends StatefulWidget {
  final List<Anime> favoriteAnimes;

  FavoriteScreen(this.favoriteAnimes);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget.favoriteAnimes.isEmpty) {
      return Center(
        child: Text('No Favorite'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return AnimeItem(
            id: widget.favoriteAnimes[index].id,
            genre: widget.favoriteAnimes[index].genre,
            title: widget.favoriteAnimes[index].title,
            imageUrl: widget.favoriteAnimes[index].imageUrl,
            rank: widget.favoriteAnimes[index].rank,
            type: widget.favoriteAnimes[index].type,
            finish: widget.favoriteAnimes[index].finish,
            information: widget.favoriteAnimes[index].information,
          );
        },
        itemCount: widget.favoriteAnimes.length,
      );
    }
  }
}
