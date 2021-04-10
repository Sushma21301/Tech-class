import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Fab4/main.dart';



class NavDrawer extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.deepPurple,
            ),
            child:Column(
              children: <Widget>[
                Align(
                  alignment:Alignment.topLeft,
                  child: Text(
                      "Welcome ${user.displayName}\n${user.email}",
                       style: TextStyle(fontSize:15,color: Colors.white),
                    ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.person,size: 100.0,))
              ],
            ),

          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {
              signOut(),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home())
            )},
          ),




        ],
      ),

    );
  }
}

signOut() async {
  await FirebaseAuth.instance.signOut();
}


