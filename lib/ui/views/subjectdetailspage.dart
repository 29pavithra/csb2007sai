import 'dart:html';
import 'package:devops_demo/ui/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:devops_demo/database/dao/services.dart';
import 'detailchildpage.dart';
class DetailPageStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Current status'),
          backgroundColor: Colors.teal),
      body: Container(
        color: Colors.greenAccent,
        padding: EdgeInsets.all(20),
        margin:EdgeInsets.all(20),
        child:Center(
          child:Text("Subject Details Submitted Successfully!"),
        ),
      ),
    );
  }
}