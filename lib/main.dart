import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Fab4/groups/group.dart';
import 'register.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  bool lights = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lights == true ? ThemeData.dark() : ThemeData.light(),
      // theme: ThemeData(
      //   primarySwatch: Colors.deepPurple,
      // ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('images/teach.png'),
                    fit: BoxFit.cover

                  ),
                ),
                //color: Colors.white,
                child:Center(
                    child: RaisedButton(
                        child: Text("TEACHER", style:TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                        color: Colors.blueGrey[900] ,
                        splashColor: Colors.red,
                        onPressed:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage())
                          );
                        }
                    ),

                  ),
                ),
              ),



          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('images/learn.jpg'),
                      fit: BoxFit.cover

                  ),
                ),
                //color: Colors.green,
                child: Center(
                  child: RaisedButton(
                      child:Text("STUDENT", style:TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                      color: Colors.blueGrey,
                      splashColor: Colors.red,
                      onPressed:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyGroup())
                        );

                      }
                  ),
                ),
              )
          )
        ]
    );

  }
}


