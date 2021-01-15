import "package:flutter/material.dart";

class Rank {
  String image;
  String company;
  Rank(this.image, this.company);
}

class Rankdata {
  List<Rank> data = [
    Rank('images/Deliotte.jpeg', 'DELIOTTE'),
    Rank('images/EY.jpeg', 'EY'),
    Rank('images/pwc.jpeg', 'PWC'),
    Rank('images/kpmg.jpeg', 'KPMG'),
  ];
  Rank getdata(int index) {
    return data[index];
  }
}

class Rankings extends StatefulWidget {
  @override
  _RankingsState createState() => _RankingsState();
}

class _RankingsState extends State<Rankings> {
  int rankindex = 0;
  @override
  Widget build(BuildContext context) {
    Rankdata rank = Rankdata();
    Rank r = rank.getdata(rankindex);
    return Card(
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Text(
                "Rankings",
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
                r.company,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(margin: EdgeInsets.all(2), child: Image.asset(r.image)),
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
                            if (rankindex + 1 >= rank.data.length) {
                              rankindex = 0;
                            } else
                              rankindex = rankindex + 1;
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
                            if (rankindex - 1 < 0) {
                              rankindex = rank.data.length - 1;
                            } else
                              rankindex = rankindex - 1;
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
    );
  }
}
