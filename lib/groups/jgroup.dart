import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:signin_app/classroom.dart';

import 'group.dart';
import 'nav_drawer.dart';

class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home:JoinGroup(),
    );
  }
}


class JoinGroup extends StatefulWidget {
  @override
  JoinGroupState createState() => JoinGroupState();
}

class JoinGroupState extends State<JoinGroup> {
  String gname;
  String name;
  int gid;
  final firestoreInstance = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('JOIN YOUR GROUP'),
          backgroundColor: Color(0xffea4c89),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyGroup()),
              );
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            child: Center(
              child: ListView(
                  children: <Widget>[
                  SizedBox(height: 50.0,),
                TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    gid = value as int; //get value from textField
                  },
                  decoration: InputDecoration(
                      hintText: "Unique group id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)))),
                ),
                    SizedBox(height: 20.0,),

                    TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    gname = value; //get value from textField
                  },
                  decoration: InputDecoration(
                      hintText: "Groupname",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)))),
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    name = value; //get value from textField
                  },
                  decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          borderSide: BorderSide(width: 2.0)
                      )),
                ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RaisedButton(
                        child: Text("SUBMIT",style:TextStyle(color: Colors.white, fontSize: 20.0)),
                        color: Color(0xffea4c89),
                        onPressed:() {
                          firestoreInstance.collection("Groups").get().then((
                              QuerySnapshot qs) {
                            qs.docs.forEach((doc) {
                              var newid = doc["GroupName"];
                              var newlist = doc["StudentList"];
                              if ((gname == newid) && (newlist.contains(name))) {
                                print("Successful");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ClassRoom()),
                                );
                              }
                              else{
                                print("Not a member");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyGroup()),
                                );
                              }
                            });
                          });
                        }
                    )
                  ],
              ),
            )),
        )
    );
  }
}


