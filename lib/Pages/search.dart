import 'package:almost/model/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSearchPage extends StatelessWidget {
  const UserSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Search',
                    style:
                        GoogleFonts.pushster(fontSize: 32, color: Colors.black),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextField(
                    style: GoogleFonts.exo(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        fillColor: Grass,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Search",
                        hintStyle: GoogleFonts.exo(color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Matcha))),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Genre',
                    style:
                        GoogleFonts.pushster(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      Tag(text: '#Physic'),
                      Tag(text: '#Chemistry'),
                      Tag(text: '#Social'),
                      Tag(text: '#English'),
                      Tag(text: '#Math'),
                      Tag(text: '#Thai'),
                      Tag(text: '#Biology'),
                      Tag(text: '#History'),
                      Tag(text: '#Religion'),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  CategoryDevider(),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Recommended',
                    style:
                        GoogleFonts.pushster(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      Tag(text: '#Geography'),
                      Tag(text: '#Renaissance'),
                      Tag(text: '#Astronomy'),
                      Tag(text: '#Anatomy'),
                      Tag(text: '#Art'),
                      Tag(text: '#Pure math'),
                      Tag(text: '#Quantum'),
                      Tag(text: '#Acid-Base'),
                      Tag(text: '#Psychology'),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  CategoryDevider(),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Recently viewed',
                    style:
                        GoogleFonts.pushster(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      Tag(text: '#Geography'),
                      Tag(text: '#Renaissance'),
                      Tag(text: '#Astronomy'),
                      Tag(text: '#Anatomy'),
                      Tag(text: '#Art'),
                      Tag(text: '#Pure math'),
                      Tag(text: '#Quantum'),
                      Tag(text: '#Acid-Base'),
                      Tag(text: '#Psychology'),
                    ],
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}

class CategoryDevider extends StatelessWidget {
  const CategoryDevider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 10, right: 10),
      color: Colors.black,
    );
  }
}

class Tag extends StatelessWidget {
  final String text;
  const Tag({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            backgroundColor: MaterialStateProperty.all<Color>(Peach)),
        child: Text(
          text,
          style: GoogleFonts.exo(color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }
}

//Unused code, but keep it in case nescessary
class CardRow extends StatelessWidget {
  const CardRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        cardsBuild(''),
        cardsBuild('#Chemistry'),
        cardsBuild('#Chemistry'),
      ],
    );
  }
}

Card cardsBuild(String txt) {
  return Card(
    color: Peach,
    //Colors.primaries[Random().nextInt(Colors.primaries.length)],
    child: Container(
      width: 150,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 17, 25, 17),
            child: Text(txt),
          )
        ],
      ),
    ),
  );
}
