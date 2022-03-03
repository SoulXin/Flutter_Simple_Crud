import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../dummy/dummy.dart';
import '../models/anime.dart';

class AnimeDetailScreen extends StatefulWidget {
  final Function toogleFavorite;
  final Function isFavorite;
  final List<Anime> availableAnimes;
  final Map<String, bool> _filters;

  AnimeDetailScreen(
    this.toogleFavorite,
    this.isFavorite,
    this.availableAnimes,
    this._filters,
  );

  @override
  State<AnimeDetailScreen> createState() => _AnimeDetailScreenState();
}

class _AnimeDetailScreenState extends State<AnimeDetailScreen> {
  List<Anime> displayedAnimes = [];

  @override
  void didChangeDependencies() {
    int index;

    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final categoryGenre = routeArgs['genre'];

    displayedAnimes = widget.availableAnimes.where((anime) {
      for (index = 0; index < categoryGenre.length; index++) {
        if (anime.genre.contains(categoryGenre[index])) {
          return true;
        }
      }
      return false;
    }).toList();

    super.didChangeDependencies();
  }

  Widget buildSectionTitle(String text) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        bottom: 3,
      ),
      child: Text(
        '${text}',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }

  Widget getGenre(List<String> selectedAnime, bool information) {
    return Row(
        children: selectedAnime
            .map(
              (item) => Text(
                '${item} ',
                style: TextStyle(
                  color: information ? Colors.black : Colors.white,
                ),
              ),
            )
            .toList());
  }

  Widget showAnotherAnime(BuildContext ctx) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlay: false,
        ),
        items: widget._filters['link_genre'] == true
            ? displayedAnimes
                .map(
                  (list) => InkWell(
                    onTap: () {
                      Navigator.of(ctx).pushReplacementNamed('/detail-anime',
                          arguments: {'id': list.id, 'genre': list.genre});
                    },
                    child: ClipRect(
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          CachedNetworkImage(
                            height: 250,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            imageUrl: list.imageUrl,
                            placeholder: (context, url) => Container(
                              child: Center(
                                child: SizedBox(
                                  child: CircularProgressIndicator(),
                                  height: 50.0,
                                  width: 50.0,
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Container(
                              width: 250,
                              color: Colors.black54,
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5,
                              ),
                              child: Text(
                                list.title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            right: 20,
                            child: Container(
                              width: 250,
                              color: Colors.black54,
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  getGenre(list.genre, false),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList()
            : widget.availableAnimes
                .map((list) => InkWell(
                      onTap: () {
                        Navigator.of(ctx).pushReplacementNamed('/detail-anime',
                            arguments: {'id': list.id, 'genre': list.genre});
                      },
                      child: ClipRect(
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            CachedNetworkImage(
                              height: 250,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              imageUrl: list.imageUrl,
                              placeholder: (context, url) => Container(
                                child: Center(
                                  child: SizedBox(
                                    child: CircularProgressIndicator(),
                                    height: 50.0,
                                    width: 50.0,
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Container(
                                width: 250,
                                color: Colors.black54,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 5,
                                ),
                                child: Text(
                                  list.title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              right: 20,
                              child: Container(
                                width: 250,
                                color: Colors.black54,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 5,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    getGenre(list.genre, false),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
                .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final animeId = routeArgs['id'];
    final selectedAnime =
        Dummy_Anime.firstWhere((anime) => anime.id == animeId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedAnime.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: CachedNetworkImage(
                width: double.infinity,
                fit: BoxFit.cover,
                imageUrl: selectedAnime.imageUrl,
                placeholder: (context, url) => Container(
                  child: Center(
                    child: SizedBox(
                      child: CircularProgressIndicator(),
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            buildSectionTitle('Description'),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 210,
              width: double.infinity,
              child: Text('${selectedAnime.description}'),
            ),
            buildSectionTitle('Information'),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Text('Name: ${selectedAnime.title}'),
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Text('Genre: '),
                        getGenre(selectedAnime.genre, true),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('Rating: ${selectedAnime.rank}'),
                  ),
                  Container(
                    width: double.infinity,
                    child:
                        Text('Studio: ${selectedAnime.information['Studio']}'),
                  ),
                ],
              ),
            ),
            buildSectionTitle('Anoter Anime'),
            showAnotherAnime(context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          widget.isFavorite(animeId) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => widget.toogleFavorite(animeId),
      ),
    );
  }
}
