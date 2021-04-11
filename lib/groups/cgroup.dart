import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:signin_app/groups/group.dart';

import 'nav_drawer.dart';

class Creation extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: CreateGroup(),
    );
  }
}


class CreateGroup extends StatefulWidget {
  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  int gid,count;
  String groupName;
  List<String> sList = new List();
  final delimiter=',';
  final firestoreInstance = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('CREATE YOUR GROUP'),
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
        body:Form(
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
                    count = value as int; //get value from textField
                  },
                  decoration: InputDecoration(
                      hintText: "Total members",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)))),
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    groupName = value; //get value from textField
                  },
                  decoration: InputDecoration(
                      hintText: "Group name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)))),

                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Enter students with comma",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)))),
                  onFieldSubmitted: (text){
                    final values=text.split(delimiter);
                    values.forEach((item) {
                      sList.add(item);
                    });
                  },
                ),
                RaisedButton(
                    child: Text("SUBMIT"),
                    onPressed:() async{
                      print(sList);
                      var firebaseUser = await FirebaseAuth.instance.currentUser;
                      firestoreInstance.collection("Groups").doc(firebaseUser.uid).set(
                          {
                            "GroupId" : gid ,
                            "GroupName" : groupName,
                            "StudentCount" : count ,
                            "StudentList" : sList
                          }).then((_){
                        print("success!");
                      });


                    })


              ],
            )),
    );
  }
}





