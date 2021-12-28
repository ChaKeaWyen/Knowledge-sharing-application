import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        children: List.generate(
          10,
          (int i) {
            return Tile(i);
          },
        ),
        staggeredTiles: List.generate(10, (index) {
          return StaggeredTile.fit(2);
        }),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  Tile(this.i);

  final int i;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        child: Image.asset(
          'assets/$i.jpg',
        ),
      ),
    );
  }
}
