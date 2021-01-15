import "package:flutter/material.dart";

class CompanyService {
  String company;
  Map<String, String> mp;
  CompanyService(this.company, this.mp);
}

class Servicedata {
  List<CompanyService> data = [
    CompanyService('DELIOTTE', {
      "tax": "images/DeloitteTax.png",
      "assurance": "images/DeloitteAssurance.png",
      "consultancy": "images/DeloitteConsultancy.png",
      "strategy": "images/DeloitteStrategyandTransaction.png",
    }),
    CompanyService('PWC', {
      "tax": "images/PWCTax.png",
      "assurance": "images/PWCAssurance.png",
      "consultancy": "images/PWCConsultancy.png",
      "strategy": "images/PWCStrategyandTransaction.png",
    }),
    CompanyService('EY', {
      "tax": "images/EYTax.png",
      "assurance": "images/EYAssurance.png",
      "consultancy": "images/EYConsultancy.png",
      "strategy": "images/EYStrategyandTransaction.png",
    }),
    CompanyService('KPMG', {
      "tax": "images/KPMGTax.png",
      "assurance": "images/KPMGAssurance.png",
      "consultancy": "images/KPMGConsultancy.png",
      "strategy": "images/KPMGStrategyandTransaction.png",
    })
  ];
  CompanyService getdata(int index) {
    return data[index];
  }
}

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  int serviceindex = 0;
  String image = "images/DeloitteTax.png";
  @override
  Widget build(BuildContext context) {
    Servicedata sd = Servicedata();
    CompanyService r = sd.getdata(serviceindex);
    return Card(
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Text(
                r.company,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: RaisedButton(
                  color: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      image = r.mp["assurance"];
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
                      image = r.mp["tax"];
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
                      image = r.mp["strategy"];
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
                      image = r.mp["consultancy"];
                    });
                  },
                  child: Text("Consultancy"),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Container(margin: EdgeInsets.all(2), child: Image.asset(image)),
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
                            if (serviceindex + 1 >= sd.data.length) {
                              serviceindex = 0;
                            } else
                              serviceindex = serviceindex + 1;
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
                            if (serviceindex - 1 < 0) {
                              serviceindex = sd.data.length - 1;
                            } else
                              serviceindex = serviceindex - 1;
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
          SizedBox(height: 120),
        ],
      ),
    );
  }
}
