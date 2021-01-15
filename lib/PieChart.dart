import "package:flutter/material.dart";

import 'Pie.dart';

class Geographic {
  String image;
  String country;
  Geographic(this.image, this.country);
}

class Geographicdata {
  List<Geographic> data = [
    Geographic('images/geoafrica.jpg', 'Africa'),
    Geographic('images/geoaustralia.jpg', 'Australia'),
    Geographic('images/geoindia.jpg', 'India'),
    Geographic('images/geouk.jpg', 'UK'),
    Geographic('images/geoengagement.jpg', 'Countries Engagement'),
    Geographic('images/geousa.jpg', 'USA'),
    Geographic('images/geocanada.jpg', 'Canada'),
  ];
  Geographic getdata(int index) {
    return data[index];
  }
}

class PieChart extends StatefulWidget {
  @override
  _PieChartState createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  int index = 0;
  int geoindex = 0;
  @override
  Widget build(BuildContext context) {
    Geographicdata g = Geographicdata();
    Geographic geo = g.getdata(geoindex);
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: RaisedButton(
                color: Colors.orange,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Text("Assurance"),
              ),
            ),
            Expanded(
              flex: 1,
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                  "Tax",
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Text("Strategy in  Transitions"),
              ),
            ),
            Expanded(
              flex: 3,
              child: RaisedButton(
                color: Colors.yellow,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Text("Consultancy"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Pie(index),
        SizedBox(height: 25),
        Card(
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text(
                    "Geographical Analysis",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text(
                    geo.country,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(2), child: Image.asset(geo.image)),
              Card(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (geoindex + 1 >= g.data.length) {
                                  geoindex = 0;
                                } else
                                  geoindex = geoindex + 1;
                              });
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (geoindex - 1 < 0) {
                                  geoindex = g.data.length - 1;
                                } else
                                  geoindex = geoindex - 1;
                              });
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 380,
        )
      ],
    );
  }
}
