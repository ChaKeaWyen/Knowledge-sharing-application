// ignore: unused_import
import 'package:almost/Pages/home.dart';
import 'package:almost/Pages/search.dart';
import 'package:almost/model/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

import 'profilere.dart';

// ignore: must_be_immutable
class Detail extends StatelessWidget {
  Detail(List img);
  final PageController controller = PageController();
  var img = [
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        toolbarHeight: 60,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.circle),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                    "https://i.ibb.co/Y28J2Cv/24b0cd2095bb7657a79d3778f91455ac.jpg",
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UserProfilePage();
                }));
              },
              child: Text(
                'kokosugar',
                style: GoogleFonts.pushster(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.dehaze_rounded))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Stack(
          children: [
            ListView(children: <Widget>[
              Container(
                //alignment: Alignment.center,
                height: size.height * 0.5,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: PageView(
                      scrollDirection: Axis.horizontal,
                      pageSnapping: false,
                      controller: controller,
                      children: [
                        Image.network(
                            "https://i.ibb.co/pjnN5ZB/26c7ddac125c91fdb1f06db64c71805b.jpg",
                            fit: BoxFit.fill),
                        Image.network(
                            "https://i.ibb.co/p3Y31J8/645467f1f29a39181ff52cbeba0a8a0c.jpg",
                            fit: BoxFit.fill),
                        Image.network(
                            "https://i.ibb.co/9VbS3R5/b86bdbaed837d9d2e623d03b34c55d33.jpg",
                            fit: BoxFit.fill),
                      ]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LikeButton(
                    size: 60,
                    circleColor: CircleColor(start: Wine, end: Peach),
                    bubblesColor: BubblesColor(
                      dotPrimaryColor: Peach,
                      dotSecondaryColor: Wine,
                    ),
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        Icons.thumb_up_rounded,
                        color: isLiked ? Colors.red[800] : Colors.grey,
                        size: 40,
                      );
                    },
                    likeCount: 0,
                    countBuilder: (count, bool isLiked, String text) {
                      var color = isLiked ? Colors.red[800] : Colors.grey;
                      Widget result;
                      if (count == 0) {
                        result = Text(
                          "",
                          style: TextStyle(color: color),
                        );
                      } else
                        result = Text(
                          text,
                          style: TextStyle(color: color),
                        );
                      return result;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          alignment: Alignment.center,
                          onPressed: () {},
                          icon: Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.grey,
                            size: 40,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 14, left: 15),
                        child: LikeButton(
                          size: 60,
                          circleColor: CircleColor(start: Wine, end: Peach),
                          bubblesColor: BubblesColor(
                            dotPrimaryColor: Peach,
                            dotSecondaryColor: Wine,
                          ),
                          likeBuilder: (bool isLiked) {
                            return Icon(
                              Icons.favorite_outline,
                              color: isLiked ? Colors.red[800] : Colors.grey,
                              size: 40,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: IconButton(
                            alignment: Alignment.center,
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              color: Colors.grey,
                              size: 40,
                            )),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 10,
                ),
                child: Text(
                  'kokosugar',
                  style:
                      GoogleFonts.pushster(color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 10,
                ),
                child: Text(
                  'This is a lecture note about Trigonometry function, included all informations and formulas needed in this Topic ',
                  style: GoogleFonts.exo(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 8,
                ),
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 10,
                  runSpacing: 10,
                  children: <Widget>[
                    Tag(text: '#Math'),
                    Tag(text: '#Trigonometry'),
                    Tag(text: '#HighschoolMath'),
                  ],
                ),
              ),
              SizedBox(height: 18),
              CategoryDevider(),
              SizedBox(height: 18),
              Text(
                'Comment(s)',
                style:
                    GoogleFonts.exo(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 8,
                ),
                child: Wrap(
                  direction: Axis.vertical,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Comment(text: "Nice note"),
                    Comment(text: "Helps a lot, Thanks"),
                    Comment(
                        text: "It's so easy to read! Love your hand writing"),
                    Comment(text: "I will probably bring this to my exam")
                  ],
                ),
              ),
              TextFormField(
                  decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(30)),
                hintText: "Add comment",
                hintStyle: GoogleFonts.exo(color: Colors.grey[700]),
              ))
            ]),
          ],
        ),
      )),
    );
  }
}

class Comment extends StatelessWidget {
  final String text;

  const Comment({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
              color: Colors.transparent, shape: BoxShape.circle),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
                "https://i.ibb.co/H4FQqGn/e9118a9b8c6f0bb208b2c67589366a4a.jpg",
                fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.exo(
            backgroundColor: Colors.lightGreen[100],
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
