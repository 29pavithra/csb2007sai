/*import 'package:flutter/material.dart';
import 'package:devops_demo/database/dao/services.dart';
import 'package:devops_demo/resources/texts/strings.dart';
import 'package:devops_demo/ui/views/detail_page.dart';

class Subject extends StatefulWidget {
  @override
  SubjectState createState() => SubjectState();
}

class SubjectState extends State<Subject> {
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
      title: Strings.TITLE_DPSR_THEORY_OF_AUTOMATA,
      indicatorValue: 0.20,
    ),
    Services(
      title: Strings.TITLE_DPSR_COMPUTER_NETWORKS,
      indicatorValue: 0.40,
    ),
    Services(
      title: Strings.TITLE_DPSR_ARTIFICIAL_INTELLIGENCE,
      indicatorValue: 0.60,
    ),
    Services(
      title: Strings.TITLE_DPSR_MOBILE_COMPUTING,
      indicatorValue: 0.80,
    ),
    Services(
      title: Strings.TITLE_DPSR_INTERNET_OF_THINGS,
      indicatorValue: 1.0,
    ),
    Services(
      title: Strings.TITLE_DPSR_MICRO_PROCESSOR_AND_MICRO_CONTROLLER,
      indicatorValue: 1.0,
    ),
  ];
}*/
import 'package:flutter/material.dart';

import 'collegedetailspage.dart';

void main() {
  runApp(MaterialApp( home: Subject(),));
}

class Subject extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Subject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Subject details'),
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
                      labelText: 'Subject 1',
                      hintText: 'Enter Your Subject1',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Subject 2',
                      hintText: 'Enter your Subject2',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Subject 3',
                      hintText: 'Enter Your Subject3',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Subject 4',
                      hintText: 'Enter Your Subject4',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Subject 5',
                      hintText: 'Enter Your Subject5',
                    ),
                  ),
                ),
                RaisedButton(
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
