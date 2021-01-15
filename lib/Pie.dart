import 'package:flutter/material.dart';
import 'package:myapp/PieData.Dart';

class Pie extends StatelessWidget {
  final int index;
  Pie(this.index);
  @override
  Widget build(BuildContext context) {
    PieInfo data = new PieData().getService(index);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(child: Image.asset(data.image)),
          Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Most used Hashtags',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Divider(),
                    for (var entry in data.mostUsedHashtags.entries)
                      Container(
                        padding: EdgeInsets.all(1),
                        child: Text(
                          "${entry.key}  ${entry.value}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Most common Mentions',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Divider(),
                    for (var entry in data.mostcommonMention.entries)
                      Container(
                        padding: EdgeInsets.all(1),
                        child: Text(
                          "${entry.key}  ${entry.value}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(2),
            child: Text(
              'Other Stats',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "average tweets per month",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "month with maximum tweets",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "average like per post",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "average comments per post ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "average retweets per post ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "maximum likes on post ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "maximum comments on post ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "maximum retweets on post ",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          data.averageTweetspermonth,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "(${data.monthwithmaximumtweetsmonth} , ${data.monthwithmaximumtweetsyear})",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          data.averagelikeperPost,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          data.averageCommentPerpost,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          data.averaeRetweetPerpost,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          data.maximumlikeonpost,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          data.maximumcommentonpost,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          data.maximumretweetonpost,
                          style: TextStyle(fontSize: 18),
                        ),
                      ]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
