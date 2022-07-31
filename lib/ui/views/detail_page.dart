import 'dart:html';
import 'package:devops_demo/ui/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:devops_demo/database/dao/services.dart';
import 'detailchildpage.dart';
class DetailPage extends StatelessWidget {
  final Services services;

  DetailPage({Key? key, required this.services}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    builder: (context) => DetailChildPage()));
              },
            child: Text("click to submit")
        ),
      ),
    );
  }
}


