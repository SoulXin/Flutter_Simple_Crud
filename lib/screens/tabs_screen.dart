import 'package:flutter/material.dart';
import './favorite_screen.dart';
import './categories_screen.dart';
import '../models/anime.dart';
import '../widgets/main_drawer.dart';

class TabScren extends StatefulWidget {
  final List<Anime> favoriteAnimes;
  final bool clickFavorite;

  TabScren(this.favoriteAnimes, this.clickFavorite);

  @override
  _TabScrenState createState() => _TabScrenState();
}

class _TabScrenState extends State<TabScren> {
  List<Map<String, Object>> _pages = [];
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': CategoriesScreen(), 'title': 'Category'},
      {'page': FavoriteScreen(widget.favoriteAnimes), 'title': 'Favorite'},
    ];
    super.initState();
  }

  @override
  void didUpdateWidget(covariant TabScren oldWidget) {
    super.didUpdateWidget(oldWidget);
    // TODO: implement didUpdateWidget
    if (widget.clickFavorite != oldWidget.clickFavorite) {
      setState(() {
        _pages = [
          {'page': CategoriesScreen(), 'title': 'Category'},
          {'page': FavoriteScreen(widget.favoriteAnimes), 'title': 'Favorite'},
        ];
      });
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).canvasColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.list),
            title: Text('Category'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
