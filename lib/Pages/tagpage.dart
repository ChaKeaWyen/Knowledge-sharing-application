import 'package:almost/Pages/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import 'notepage.dart';

// ignore: must_be_immutable
class Tagpage extends StatelessWidget {
  final String text;
  Tagpage({Key? key, required this.text}) : super(key: key);
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Container(
            alignment: Alignment.topRight,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_rounded),
                  color: Colors.black,
                  tooltip: 'Setting',
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: GoogleFonts.pushster(fontSize: 32, color: Colors.black),
              ),
              const SizedBox(
                height: 18,
              ),
              const CategoryDevider(),
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
          ),
        ));
  }
}
