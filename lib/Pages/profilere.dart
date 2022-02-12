// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:almost/model/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'homepages.dart';
import 'notepage.dart';

// ignore: must_be_immutable
class UserProfilePage extends StatelessWidget {
  List img = [
    "https://i.ibb.co/sCtdTLB/7624913bdd927430edcb2fa426bf1b78.jpg",
    "https://i.ibb.co/0VbBFGQ/2583136c4a48b2de32d594866a861ae3.jpg",
    "https://i.ibb.co/pjnN5ZB/26c7ddac125c91fdb1f06db64c71805b.jpg",
    "https://i.ibb.co/KjrjCr9/b4085c406630a72cde9bda2cafdc48a7.jpg",
    "https://i.ibb.co/mRcvQLd/cb725444d42d18d9aef5e015e4a76603.jpg",
  ];

  UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: avoid_unnecessary_containers
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Container(
        alignment: Alignment.topRight,
        child: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_rounded),
              color: Colors.black,
              tooltip: "Setting",
            )
          ],
        ),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  FloatingActionButton.small(
                      child: Icon(Icons.arrow_left),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 0,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Homere();
                        }));
                      }),
                  Text(
                    'Profile',
                    style:
                        GoogleFonts.pushster(fontSize: 32, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.transparent, shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                          "https://i.ibb.co/Y28J2Cv/24b0cd2095bb7657a79d3778f91455ac.jpg",
                          fit: BoxFit.fill),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "5",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              "Note",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "245",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              "Follower",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "98",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              "Following",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "kokosugar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Social, History, Biology",
                    ),
                  ],
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  width: size.width * 0.9,
                  height: size.height * 0.07,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Wine,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        textStyle: GoogleFonts.exo(
                          fontSize: 20,
                        )
                        //  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        //   (Set<MaterialState> states) {
                        // if (states.contains(MaterialState.hovered)) {
                        //    return Wine;
                        //  }
                        //  return Peach;
                        // }),
                        ),
                    child: const Text('Follow + ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Note (5)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
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
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child:
                                    Image.network(img[index], fit: BoxFit.fill),
                              ),
                            ));
                      },
                      staggeredTileBuilder: (index) {
                        return StaggeredTile.count(1, index.isEven ? 1.2 : 2);
                      }),
                ),
              )
            ],
          )),
    ])));
  }
}
