import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signin_app/groups/cgroup.dart';
import 'package:signin_app/groups/jgroup.dart';
import 'package:signin_app/groups/nav_drawer.dart';



class MyGroup extends StatefulWidget {
  @override
  _MyGroupState createState() => _MyGroupState();
}

class _MyGroupState extends State<MyGroup> {
  final controller=PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('GROUP OPERATIONS'),
        backgroundColor: Color(0xffea4c89),
      ),
      body: Center(
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
                          child:Text("CREATE GROUP", style:TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                          color: Color(0xffea4c89) ,
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
                  color: Colors.pink[100],
                  child: Center(
                    child: RaisedButton(
                        child:Text("JOIN GROUP", style:TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                        color: Color(0xffea4c89),
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
    ),
    );
  }
}





