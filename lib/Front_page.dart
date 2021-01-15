import "package:flutter/material.dart";
import 'package:myapp/Second_Page.dart';
import 'package:myapp/twitter.dart';
import "PieChart.dart";
import 'Sentiment.dart';

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EY Social Media Listening"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tab(),
            Row(
              children: <Widget>[
                Twitter(),
                Sentiment(),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    child: PieChart(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            child: Text('Navigate', style: TextStyle(fontSize: 30)),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('EY Social Media Listening'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('EY Comparison with Big Four'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => (SecondPage()),
                ),
              );
              // Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}

class Tab extends StatelessWidget {
  const Tab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            color: Colors.blue[900],
            child: Text(
              'Overall Twitter Analysis',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            color: Colors.blue[900],
            child: Text(
              'Sentiment Analysis',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            color: Colors.blue[900],
            child: Text(
              'Services',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
