import 'package:flutter/material.dart';

class Sentiment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: EdgeInsets.all(3),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Image.asset("images/linechart.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(
                          "Happy",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(
                          "Sad",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                        margin: EdgeInsets.all(2),
                        child: Image.asset("images/HappyCloud.png")),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                        margin: EdgeInsets.all(2),
                        child: Image.asset("images/SadCloud.png")),
                  ),
                ],
              ),
            ),
            Card(
              shadowColor: Colors.black,
              child: ListTile(
                leading: Icon(Icons.mark_chat_read),
                title: Text(
                    "The maximum tagged EY page for word amazing is :@ EYnews"),
              ),
            ),
            SizedBox(height: 25),
            Card(
              child: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text(
                  "EY News Channel",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Image.asset("images/EY_news.png"),
            ),
            Card(
              shadowColor: Colors.black,
              child: ListTile(
                leading: Icon(Icons.mark_chat_read),
                title: Text(
                    "There 19 were incidents where KPMG was mentioned while the count is 17,14 and 12 for EY, Deliotte and PWC"),
              ),
            ),
            SizedBox(height: 25),
            Card(
              child: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                color: Colors.black,
                child: Text(
                  "Covid 19 Analysis",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset("images/big4_covid.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
