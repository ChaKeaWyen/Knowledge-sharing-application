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
                    style: GoogleFonts.exo(color: Colors.black),
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
                            borderRadius: BorderRadius.circular(30))),
                  )
                ],
              )),
        ],
      ),
    ));
  }
}
