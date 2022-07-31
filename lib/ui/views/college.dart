/*import 'package:flutter/material.dart';
import 'package:devops_demo/database/dao/services.dart';
import 'package:devops_demo/resources/texts/strings.dart';
import 'package:devops_demo/ui/views/detail_page.dart';

class College extends StatefulWidget {
  @override
  CollegeState createState() => CollegeState();
}

class CollegeState extends State<College> {
  late List services;

  @override
  void initState() {
    services = getServices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Services services) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.auto_awesome, color: Colors.white),
      ),
      title: Text(
        services.title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),


      subtitle: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                child: LinearProgressIndicator(
                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                    value: services.indicatorValue,
                    valueColor: AlwaysStoppedAnimation(Colors.green)),
              )),
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(services: services)));
      },
    );

    Card makeCard(Services services) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(services),
      ),
    );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: services.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(services[index]);
        },
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: makeBody,
    );
  }
}

List getServices() {
  return [
    Services(
      title: Strings.TITLE_DPSR_COLLEGE_NAME,
      indicatorValue: 0.20,
    ),
    Services(
      title: Strings.TITLE_DPSR_COLLEGE_ADDRESS,
      indicatorValue: 0.40,
    ),
    Services(
      title: Strings.TITLE_DPSR_COLLEGE_SUBJECT,
      indicatorValue: 0.60,
    ),
    /*Services(
      title: Strings.TITLE_DPSR_BE_SPONSER,
      indicatorValue: 0.80,
    ),
    Services(
      title: Strings.TITLE_DPSR_OUR_SPONSERS,
      indicatorValue: 1.0,
    ),*/
  ];
}*/
import 'package:flutter/material.dart';

import 'collegedetailspage.dart';

void main() {
  runApp(MaterialApp( home: College(),));
}

class College extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<College> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('College details'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'College Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'College Address',
                      hintText: 'Enter your Address',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'College Course',
                      hintText: 'Enter Your Course name',
                    ),
                  ),
                ),
               /* Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Student course',
                      hintText: 'Enter Your Course',
                    ),
                  ),
                ),*/RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Submit'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>DetailPageStudent()
                        )
                    );
                  },
                )
              ],
            )
        )
    );
  }
}
