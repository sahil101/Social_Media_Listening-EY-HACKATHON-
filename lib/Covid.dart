import "package:flutter/material.dart";

class Covid19 {
  String image;
  String company;
  Covid19(this.image, this.company);
}

class Coviddata {
  List<Covid19> data = [
    Covid19('images/cdeliotte.JPG', 'DELIOTTE'),
    Covid19('images/cey.JPG', 'EY'),
    Covid19('images/cpwc.JPG', 'PWC'),
    Covid19('images/ckpmg.JPG', 'KPMG'),
  ];
  Covid19 getdata(int index) {
    return data[index];
  }
}

class Covid extends StatefulWidget {
  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  int cindex = 0;
  @override
  Widget build(BuildContext context) {
    Coviddata c = Coviddata();
    Covid19 co = c.getdata(cindex);
    return Card(
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Text(
                "Covid 19 Sentiments",
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
                co.company,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(margin: EdgeInsets.all(2), child: Image.asset(co.image)),
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
                            if (cindex + 1 >= c.data.length) {
                              cindex = 0;
                            } else
                              cindex = cindex + 1;
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
                            if (cindex - 1 < 0) {
                              cindex = c.data.length - 1;
                            } else
                              cindex = cindex - 1;
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
          SizedBox(height: 150),
        ],
      ),
    );
  }
}
