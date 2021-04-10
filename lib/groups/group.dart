import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Fab4/groups/cgroup.dart';
import 'package:Fab4/groups/jgroup.dart';
import 'package:Fab4/groups/nav_drawer.dart';

class MyGroup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('GROUP OPERATIONS'),
      ),
      body: MyHomePageState()
    );
  }
}

class MyHomePageState extends MyHomePage {

  final controller=PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: PageView(
          controller: controller,
          onPageChanged: (page)=>{print(page.toString())},
          pageSnapping: true,
          scrollDirection: Axis.horizontal,

          children: <Widget>[
            Expanded(

                child: Container(
                  color: Colors.white,
                  child: Center(
                      child: RaisedButton(
                          child:Text("CREATE GROUP", style:TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 20.0)),
                          color: Colors.transparent ,
                          splashColor: Colors.red,
                          onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Creation())
                            );
                          }
                      ),
                    ),
                  ),


            ),




            Expanded(
                child: Container(
                  color: Colors.green,
                  child: Center(
                    child: RaisedButton(
                        child:Text("JOIN GROUP", style:TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                        color: Colors.transparent,
                        splashColor: Colors.red,
                        onPressed:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Join())
                          );
                        }
                    ),
                  ),
                )
            )
          ]
      ),
    );

  }
}


