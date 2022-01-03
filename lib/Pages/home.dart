// ignore_for_file: unused_import

import 'package:almost/Pages/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

//class UserHomePage extends StatelessWidget {
//const UserHomePage({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
//  return Scaffold(
//  body: StaggeredGridView.count(
//    crossAxisCount: 4,
//    children: List.generate(
//     10,
//     (int i) {
//       return Tile(i);
//      },
//   ),
//   staggeredTiles: List.generate(10, (index) {
//     return StaggeredTile.fit(2);
//   }),
//    ),
//   );
// }
//}

class Tile extends StatelessWidget {
  const Tile({Key? key}) : super(key: key);

  //Tile(this.i);
  //final int i;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Almost',
              style: TextStyle(
                fontSize: 39,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return UserSearchPage();
                      },
                    ));
                  },
                  child: Text('New'),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffc14b3d)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return UserSearchPage();
                      },
                    ));
                  },
                  child: Text('Popular'),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffc14b3d)),
                      //foregroundColor:
                      // MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return UserSearchPage();
                      },
                    ));
                  },
                  child: Text('Update'),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffc14b3d)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                ),
              ],
            )
          ],
        ),
      )),
    );
    //return Container(
    // margin: EdgeInsets.all(10),
    //child: ClipRRect(
    //borderRadius: BorderRadius.all(
    //Radius.circular(5),
    //),
    //child: Image.asset(
    //  'assets/$i.jpg',
    //),
    //),
    //);
  }
}
