import 'dart:html';
import 'package:devops_demo/ui/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:devops_demo/database/dao/services.dart';
import 'detailchildpage.dart';
class DetailPageStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      body: Container(
        color:Colors.redAccent,
        alignment: Alignment.center,
        child: ElevatedButton(
            style:ElevatedButton.styleFrom(
              primary: Colors.black,
              elevation:10,
            ),
            onPressed: (
                ) { Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailChildPage())); },
            child: Text("click to submit")
        ),
      ),
    );*/
    return Scaffold(
      appBar: AppBar(
          title: const Text('Current State'),
          backgroundColor: Colors.teal),
    body: Container(
    color: Colors.greenAccent,
    padding: EdgeInsets.all(20),
    margin:EdgeInsets.all(20),
    child:Center(
        child:Text("Student Details Submitted Successfully!"),
    ),
    ),
    );
  }
}
