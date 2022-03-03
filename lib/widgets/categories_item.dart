import 'package:flutter/material.dart';
import '../screens/categories_anime_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  CategoryItem(this.id, this.title, this.image);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/category-anime', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.caption,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${image}'),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
