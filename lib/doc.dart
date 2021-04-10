import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Fab4/Documents/main1.dart';
import 'package:Fab4/PdfFirebase/FirstPage.dart';
import 'package:Fab4/Quiz/views/home.dart';
import 'package:Fab4/pages/index.dart';

class Document extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body:CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Text(
                        "CLASSROOM",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => IndexPage()));
                          },
                        child: Text("Live Class",style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),),
                        color: Colors.grey,
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FirstPage()));
                          },
                        child: Text("Documents",style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),),
                        color: Colors.grey,
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyScan()));
                          },
                        child: Text("Scanner",style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),),
                        color: Colors.white,
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()));
                          },
                        child:Text("Quiz",style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),),
                        color: Colors.green[100],
                      ),
                    ]
                )
            )
          ]
      )
    );
  }
}
