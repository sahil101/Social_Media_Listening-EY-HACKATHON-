import "package:flutter/material.dart";
import 'package:myapp/Covid.dart';
import 'package:myapp/Rankings.dart';
import 'package:myapp/Services.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EY Comparison with Big Four"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tab(),
            Tab2(),
            SizedBox(height: 25),
            Tab3(),
            Tab4(),
            Row(children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Card(
                    shadowColor: Colors.black,
                    child: ListTile(
                      leading: Icon(Icons.mark_chat_read),
                      title: Text(
                          "EY Failed to cope up with covid19 and didn't use it as an opportunity to reach out like KPMG"),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Card(
                    shadowColor: Colors.black,
                    child: ListTile(
                      leading: Icon(Icons.mark_chat_read),
                      title: Text(
                          "There were 19 incidents where KPMG was mentioned while the count is 17,14 and 12 for EY,Deloitte and PWC. \nAlso in the year 2019 KPMG was almost mentioned in every month.\nThough EY is almost equal to other Big4 but still need to have more incidents in order to dominate in this."),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Card(
                    shadowColor: Colors.black,
                    child: ListTile(
                      leading: Icon(Icons.mark_chat_read),
                      title: Text(
                          "Pwc dominating twitter by using name of trending technologies like AI/ML,Data Science,etc.While EY is worst in terms of this and should use these buzzwords to max reach."),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class Tab4 extends StatelessWidget {
  const Tab4({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Image.asset('images/covid.png')),
        ),
        Expanded(
          flex: 3,
          child: Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Image.asset('images/NewsBig4.png')),
        ),
        Expanded(
          flex: 3,
          child: Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Image.asset('images/techMention.png')),
        )
      ],
    );
  }
}

class Tab3 extends StatelessWidget {
  const Tab3({
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
              'Covid 19',
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
              'News Channel',
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
              'Technology Buzz',
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

class Tab2 extends StatelessWidget {
  const Tab2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Rankings(),
        ),
        Expanded(
          flex: 3,
          child: Covid(),
        ),
        Expanded(
          flex: 3,
          child: Services(),
        ),
      ],
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
              'BIG FOUR RANKINGS',
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
              'COVID 19 SENTIMENT',
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
              'BIG FOUR SERVICES COMPARISON',
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
