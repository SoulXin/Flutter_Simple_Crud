import 'package:anime_list/screens/filters_screen.dart';
import 'package:flutter/material.dart';

import '/screens/tabs_screen.dart';
import 'screens/anime_detail_screen.dart';
import 'screens/categories_anime_screen.dart';
import 'screens/categories_screen.dart';
import './dummy/dummy.dart';
import './models/anime.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Anime> _favoriteAnimes = [];
  List<Anime> _availableAnimes = Dummy_Anime;

  Map<String, bool> _filters = {
    'episode': false,
    'movie': false,
    'finish': false,
    'link_genre': false
  };

  bool clickFavorite = false;

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
    });

    _availableAnimes = Dummy_Anime.where((list) {
      if (_filters['episode'] == true && list.type != Type.Episode) {
        return false;
      }
      if (_filters['movie'] == true && list.type != Type.Movie) {
        return false;
      }
      if (_filters['finish'] == true && !list.finish) {
        return false;
      }

      return true;
    }).toList();
  }

  void _toggleFavorite(String animeId) {
    final existingIndex =
        _favoriteAnimes.indexWhere((list) => list.id == animeId);

    if (existingIndex >= 0) {
      setState(() {
        _favoriteAnimes.removeAt(existingIndex);
        clickFavorite = !clickFavorite;
      });
    } else {
      setState(() {
        _favoriteAnimes
            .add(Dummy_Anime.firstWhere((list) => list.id == animeId));
        clickFavorite = !clickFavorite;
      });
    }
  }

  bool _isAnimeFavorite(String id) {
    return _favoriteAnimes.any((list) => list.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime List',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.cyan,
        canvasColor: Colors.white,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 70, 70, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 70, 70, 1),
              ),
              caption: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed',
                  background: Paint()
                    ..color = Colors.black54
                    ..strokeWidth = 20
                    ..style = PaintingStyle.stroke),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabScren(_favoriteAnimes, clickFavorite),
        '/category-anime': (ctx) => CategoriesAnimeScreen(_availableAnimes),
        '/detail-anime': (ctx) => AnimeDetailScreen(
            _toggleFavorite, _isAnimeFavorite, _availableAnimes, _filters),
        '/filters': (ctx) => FilterScreen(_filters, _setFilters),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anime List'),
      ),
      body: Center(
        child: Text('Navigation'),
      ),
    );
  }
}
