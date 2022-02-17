import 'package:almost/Pages/tagpage.dart';
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
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.start,
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
                      Tag(text1: '#Physic'),
                      Tag(text1: '#Chemistry'),
                      Tag(text1: '#Social'),
                      Tag(text1: '#English'),
                      Tag(text1: '#Math'),
                      Tag(text1: '#Thai'),
                      Tag(text1: '#Biology'),
                      Tag(text1: '#History'),
                      Tag(text1: '#Religion'),
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
                      Tag(text1: '#Geography'),
                      Tag(text1: '#Renaissance'),
                      Tag(text1: '#Astronomy'),
                      Tag(text1: '#Anatomy'),
                      Tag(text1: '#Art'),
                      Tag(text1: '#Pure math'),
                      Tag(text1: '#Quantum'),
                      Tag(text1: '#Acid-Base'),
                      Tag(text1: '#Psychology'),
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
                      Tag(text1: '#Geography'),
                      Tag(text1: '#Renaissance'),
                      Tag(text1: '#Astronomy'),
                      Tag(text1: '#Anatomy'),
                      Tag(text1: '#Art'),
                      Tag(text1: '#Pure math'),
                      Tag(text1: '#Quantum'),
                      Tag(text1: '#Acid-Base'),
                      Tag(text1: '#Psychology'),
                    ],
                  ),
                ],
              )),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white.withOpacity(0), Colors.white]),
                color: Colors.white),
            height: 40,
            alignment: Alignment.topRight,
            child: Column(
              children: [
                //Text(
                //  'Search',
                //  style:
                //      GoogleFonts.pushster(fontSize: 32, color: Colors.black),
                // ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings_rounded),
                  color: Colors.black,
                  tooltip: "Setting",
                )
              ],
            ),
          ),
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
  final String text1;
  const Tag({
    Key? key,
    required this.text1,
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
          text1,
          style: GoogleFonts.exo(color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Tagpage(text: text1);
          }));
        },
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
