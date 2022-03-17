// ignore_for_file: unused_import

import 'package:almost/Pages/homepages.dart';
import 'package:almost/Pages/search.dart';
import 'package:almost/Pages/tagpage.dart';
import 'package:almost/model/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import 'notepage.dart';

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

// ignore: must_be_immutable
class Tile extends StatelessWidget {
  Tile({Key? key}) : super(key: key);

  List img = [
    "https://i.ibb.co/J59fnyX/e9115f92425fbc2df2624d39f968ec99.jpg",
    "https://i.ibb.co/PNWrz8Z/58d8ebcfa3cab93b4acb0992fbff7b01.jpg",
    "https://i.ibb.co/sCtdTLB/7624913bdd927430edcb2fa426bf1b78.jpg",
    "https://i.ibb.co/0VbBFGQ/2583136c4a48b2de32d594866a861ae3.jpg",
    "https://i.ibb.co/p3Y31J8/645467f1f29a39181ff52cbeba0a8a0c.jpg",
    "https://i.ibb.co/pjnN5ZB/26c7ddac125c91fdb1f06db64c71805b.jpg",
    "https://i.ibb.co/9VbS3R5/b86bdbaed837d9d2e623d03b34c55d33.jpg",
    "https://i.ibb.co/ZVsh75Z/db838cd1d7fe121c06f5696a79b99f56.jpg",
    "https://i.ibb.co/KjrjCr9/b4085c406630a72cde9bda2cafdc48a7.jpg",
    "https://i.ibb.co/mRcvQLd/cb725444d42d18d9aef5e015e4a76603.jpg",
    "https://i.ibb.co/1v10B6y/89f10975e08a61d160057c784c02167e.jpg",
    "https://i.ibb.co/3Yh9yxN/89c2ab0fc2bfabc8a07dc0eb46e7ef5b.jpg",
    "https://i.ibb.co/PMMppQx/376e32ea838c3dfccfeca57da0ad4b6f.jpg",
  ];
  //Tile(this.i);
  //final int i;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings_rounded),
                      color: Colors.black,
                      tooltip: "Setting",
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Almost',
                      style: GoogleFonts.pushster(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    // App bar categories
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Tagpage(text: 'New');
                              },
                            ));
                          },
                          child: Text(
                            '      New      ',
                            style: GoogleFonts.pushster(
                              fontSize: 14,
                            ),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(15)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xffc14b3d)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Tagpage(text: 'Popular');
                              },
                            ));
                          },
                          child: Text(
                            '   Popular   ',
                            style: GoogleFonts.pushster(
                              fontSize: 14,
                            ),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(15)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xffc14b3d)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Tagpage(text: 'Update');
                              },
                            ));
                          },
                          child: Text(
                            '   Update   ',
                            style: GoogleFonts.pushster(
                              fontSize: 14,
                            ),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(15)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xffc14b3d)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                        ),
                      ],
                    ),
                    // SCrolling view
                    SizedBox(
                      height: 24,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        child: StaggeredGridView.countBuilder(
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            itemCount: img.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Detail(img);
                                    }));
                                  },

                                  //style: ButtonStyle(
                                  //  backgroundColor:
                                  //   MaterialStateProperty.all<Color>(
                                  //      Colors.white),
                                  // shape: MaterialStateProperty.all<
                                  //       RoundedRectangleBorder>(
                                  //    RoundedRectangleBorder(
                                  //  borderRadius: BorderRadius.circular(20),
                                  // ))),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(img[index],
                                          fit: BoxFit.fill),
                                    ),
                                  ));
                            },
                            staggeredTileBuilder: (index) {
                              return new StaggeredTile.count(
                                  1, index.isEven ? 1.2 : 2);
                            }),
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: (Peach),
                      ),
                      child: (Icon(
                        Icons.edit,
                        color: Colors.white,
                      )),
                    )
                  ],
                ),
              ),
            ],
          )),
    ));
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
