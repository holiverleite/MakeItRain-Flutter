import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}
    
class MakeItRainState extends State<MakeItRain> {

  int _moneyCounter = 0;

  void _rainMoney() {
    // setState is called each time we need to update the UI
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain!"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Get Rich!",
                style: new TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 29.9,
                  color: Colors.grey
                ),
              ),
            ),

            new Expanded(
              child: new Center(
                child: new Text(
                  '\R\$$_moneyCounter\,\0\0',
                  style: new TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 46.9,
                    color: (_moneyCounter < 10000) ? Colors.greenAccent : Colors.blueAccent 
                  ),
                ),
              )
            ),

            new Expanded(
              child: new Center(
                child: new FlatButton(
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  onPressed: _rainMoney,
                  child: new Text(
                    "Lei it Rain!", 
                    style: new TextStyle(
                      fontSize: 19.9
                    )
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}