import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/anime.dart';

class AnimeItem extends StatelessWidget {
  final String id;
  final List<String> genre;
  final String title;
  final String imageUrl;
  final double rank;
  final Type type;
  final bool finish;
  final Map information;
  // final Function removeItem;

  AnimeItem({
    required this.id,
    required this.genre,
    required this.title,
    required this.imageUrl,
    required this.rank,
    required this.type,
    required this.finish,
    required this.information,
    // required this.removeItem,
  });

  String get typeText {
    if (type == Type.Episode) {
      return 'Episode';
    } else {
      return 'Movie';
    }
  }

  void selectAnime(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/detail-anime', arguments: {'id': id, 'genre': genre});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectAnime(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: CachedNetworkImage(
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    imageUrl: imageUrl,
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
                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 5,
                      ),
                      child: Container(
                        color: Colors.white,
                        child: finish
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                      )),
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
                      title,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('${rank}'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.home,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('${information['Studio']}'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('${typeText}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
