import 'package:anime_list/widgets/anime_item.dart';
import 'package:flutter/material.dart';
import '../dummy/dummy.dart';
import '../models/anime.dart';

class CategoriesAnimeScreen extends StatefulWidget {
  final List<Anime> availableAnimes;

  CategoriesAnimeScreen(this.availableAnimes);

  @override
  _CategoryAnimeScreenState createState() => _CategoryAnimeScreenState();
}

class _CategoryAnimeScreenState extends State<CategoriesAnimeScreen> {
  String categoryTitle = '';
  List<Anime> displayedAnimes = [];
  bool _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;

      categoryTitle = routeArgs['title'].toString();
      displayedAnimes = widget.availableAnimes.where((anime) {
        return anime.genre.contains(categoryTitle);
      }).toList();
      _loadedInitData = true;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Anime ${categoryTitle}'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return AnimeItem(
            id: displayedAnimes[index].id,
            genre: displayedAnimes[index].genre,
            title: displayedAnimes[index].title,
            imageUrl: displayedAnimes[index].imageUrl,
            rank: displayedAnimes[index].rank,
            type: displayedAnimes[index].type,
            finish: displayedAnimes[index].finish,
            information: displayedAnimes[index].information,
          );
        },
        itemCount: displayedAnimes.length,
      ),
    );
  }
}
