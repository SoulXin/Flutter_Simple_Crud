import 'package:flutter/material.dart';

class ListDrawer extends StatelessWidget {
  const ListDrawer({Key? key}) : super(key: key);

  Widget menuItem(String title, IconData icon, Function tapHandler) {
    return Material(
      child: InkWell(
        onTap: () => tapHandler(),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 24,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        // show list of drawer
        children: [
          menuItem('Anime', Icons.movie, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          Divider(
            thickness: 1.0,
          ),
          menuItem('Filter', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed('/filters');
          }),
        ],
      ),
    );
  }
}
