import 'package:flutter/material.dart';

class Twitter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.all(3),
        child: Column(
          children: <Widget>[
            Card(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: Text(
                          "Cities",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: Text(
                          "Countries",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 5,
                      child: Column(children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 7,
                              child: Column(children: <Widget>[
                                Text(
                                  "London",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Paris",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Chicago",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Boston",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Sydney",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "San Francisco",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ]),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(children: <Widget>[
                                Text(
                                  "89",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "31",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "28",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "23",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ]),
                            )
                          ],
                        )
                      ])),
                  Expanded(
                      flex: 5,
                      child: Column(children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 7,
                              child: Column(children: <Widget>[
                                Text(
                                  "United States",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "United Kingdom",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "India",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Canada",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Spain",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "France",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ]),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(children: <Widget>[
                                Text(
                                  "1116",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "247",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "203",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "132",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "132",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "72",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ]),
                            )
                          ],
                        )
                      ]))
                ],
              )
                  // Text(
                  //   "Top People Mentioned",
                  //   style: TextStyle(
                  //     fontSize: 20,
                  //     color: Colors.black,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  ),
            ),
            SizedBox(
              height: 25,
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
                        color: Colors.black,
                        child: Text(
                          "Retweets on weekdays",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: Text(
                          "Retweets during a day",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 7,
                                child: Column(children: <Widget>[
                                  Text(
                                    "Friday",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Monday",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Sunday",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Thursday",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Tuesday",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Wednesday",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(children: <Widget>[
                                  Text(
                                    "5.675",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "2.456",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "3.222",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "4.803",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "8.500",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "3.661",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                              )
                            ],
                          )
                        ])),
                    Expanded(
                        flex: 5,
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 7,
                                child: Column(children: <Widget>[
                                  Text(
                                    "Early Afternoon",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Early Evening",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Early Morning",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Late Afternoon",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Late Evening",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Late Morning",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(children: <Widget>[
                                  Text(
                                    "2.688",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "12.29",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "3.342",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "4.032",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "2.884",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "2.187",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                              )
                            ],
                          )
                        ]))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              color: Colors.black,
              child: Text(
                "Twitter Analysis Statistics",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              child: Column(children: <Widget>[
                ListTile(
                  leading: Icon(Icons.mark_chat_read),
                  title: Text(
                      "Around 47 % tweets of total tweets shared from Web App while 33% and 19% from iPhone and Android."),
                ),
                ListTile(
                  leading: Icon(Icons.mark_chat_read),
                  title: Text(
                      "7% of the twitter accounts mentioning EY have more than 10k followers while 34% have more than 1k"),
                ),
                ListTile(
                  leading: Icon(Icons.mark_chat_read),
                  title: Text(
                      "Tweets with both Photo and videos on an average get 22 retweets while alone photo is 9, alone video is 7 and normal text is 2"),
                ),
              ]),
            ),
            SizedBox(height: 25),
            Card(
              child: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text(
                  "Top Organisation Mentioned",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset("images/TopOrganisation.png"),
            ),
            SizedBox(height: 25),
            Card(
              child: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text(
                  "Top People Mentioned",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset("images/TopPeopleMention.png"),
            ),
            SizedBox(height: 320),
          ],
        ),
      ),
    );
  }
}
