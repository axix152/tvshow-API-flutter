import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tvshow/constant.dart';
import 'package:tvshow/networkhelper/apiservices.dart';
import 'package:tvshow/screens/album.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  late Future<Album> futureAlbum;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum = APIService().get(endpoint: '', query: {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldbg,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: kappbarcolor,
        title: Text(
          'Rando Tv Show',
          style: GoogleFonts.amita(
            color: ktextcolor,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          const Text(
            'Title',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          RaisedButton(
            textColor: ktextcolor,
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.015,
                horizontal: MediaQuery.of(context).size.width * 0.25),
            onPressed: () {},
            child: Text(
              "Another TV show",
              style: GoogleFonts.roboto(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          )
        ],
      ),
    );
  }
}
