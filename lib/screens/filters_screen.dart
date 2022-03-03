import 'package:anime_list/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  final Map<String, bool> currentFilters;
  final Function saveFilters;

  FilterScreen(this.currentFilters, this.saveFilters);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  dynamic _animeEpisode = false;
  dynamic _animeMovie = false;
  dynamic _animeFinish = false;
  dynamic _linkGenre = false;

  @override
  initState() {
    _animeEpisode = widget.currentFilters['episode'];
    _animeMovie = widget.currentFilters['movie'];
    _animeFinish = widget.currentFilters['finish'];
    _linkGenre = widget.currentFilters['link_genre'];
    super.initState();
  }

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool value,
    dynamic change,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(
        description,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      value: value,
      onChanged: change,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Options'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                final Map<String, bool> selectedFilters = {
                  'episode': _animeEpisode,
                  'movie': _animeMovie,
                  'finish': _animeFinish,
                  'link_genre': _linkGenre
                };
                widget.saveFilters(selectedFilters);
              },
              icon: Icon(Icons.save))
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Filter your anime',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              _buildSwitchListTile(
                  'Episode', 'Only show episode anime', _animeEpisode, (val) {
                setState(() {
                  _animeEpisode = val;
                  _animeMovie = !_animeMovie
                      ? false
                      : val
                          ? false
                          : true;
                });
              }),
              _buildSwitchListTile(
                  'Movie', 'Only show movie anime', _animeMovie, (val) {
                setState(() {
                  _animeEpisode = !_animeEpisode
                      ? false
                      : val
                          ? false
                          : true;
                  _animeMovie = val;
                });
              }),
              _buildSwitchListTile(
                  'Finish', 'Only show anime with status finish', _animeFinish,
                  (val) {
                setState(() {
                  _animeFinish = val;
                });
              }),
              _buildSwitchListTile(
                  'Link With Genre', 'Show anime with same genre', _linkGenre,
                  (val) {
                setState(() {
                  _linkGenre = val;
                });
              })
            ],
          ))
        ],
      ),
    );
  }
}
