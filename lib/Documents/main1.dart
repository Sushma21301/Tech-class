import 'dart:convert';

import 'package:Fab4/Documents/Model/documentModel.dart';
import 'package:Fab4/Documents/Providers/documentProvider.dart';
import 'package:Fab4/Documents/showImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home.dart';
import 'Providers/documentProvider.dart';


class MyScan extends StatefulWidget {
  @override
  _MyScanState createState() => _MyScanState();
}

class _MyScanState extends State<MyScan> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: DocumentProvider(),
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(color: ThemeData.dark().canvasColor),
            textSelectionColor: Colors.blueGrey,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: ThemeData.dark().canvasColor)),
        home: Home(),
      ),
    );
  }
}