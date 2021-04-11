import 'package:flutter/material.dart';
import 'package:signin_app/Calculator/calc.dart';
import 'package:signin_app/Calendar/calendar.dart';
import 'package:signin_app/Dictionary/dictionary.dart';
import 'package:signin_app/doc.dart';
import 'package:signin_app/news/views/homepage.dart';
import 'package:signin_app/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "TECH CLASS",
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[

                  RaisedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Calci()));
                      },
                    // AssetImage("assets/festival.png"),
                    child: Text("Calculator",style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),),
                     color: Colors.teal[500],
                     ),
                  FlatButton(

                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dictionary()));
                    },
                    child: Text("Dictionary",style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),),
                    color: Colors.teal[300],
                  ),
                  FlatButton(

                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Document()));
                    },
                    child: Text("Class",style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),),
                    color: Colors.teal,
                  ),
                  FlatButton(

                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CalendarApp()));
                    },
                    child:Text("Calendar",style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),),
                    color: Colors.teal[500],
                  ),
                  FlatButton(

                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewsPage()));
                    },
                    child:Text(" Live News",style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),),
                    color: Colors.teal[300],
                  ),
                  FlatButton(

                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => IndexPage()));
                    },
                    child: Text("Settings",style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),),
                    color: Colors.teal[500],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}