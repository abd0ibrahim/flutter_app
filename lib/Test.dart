import 'main.dart';
import 'package:flutter/material.dart';


class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int ninjaLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("my fikkkkkkkkrst 5arya"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 30, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/mountain.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 80,
              color: Colors.white,
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text('Chin-liu',
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 30),
            Text(
              'Level',
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text('$ninjaLevel',
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),

//          Row(
//
//            children: <Widget>[
//              Expanded(
//                child: Container(
//                  padding: EdgeInsets.all(30),
//                  color: Colors.cyan,
//                  child: Text("1"),
//                ),
//              ),
//              Container(
//                padding: EdgeInsets.all(30),
//                color: Colors.purple,
//                child: Text("1"),
//              ),
//              Container(
//                padding: EdgeInsets.all(30),
//                color: Colors.orange,
//                child: Text("1"),
//              ),
//              Container(),
//              Container()
//            ],
//          ),

//      Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.stretch,
//        children: <Widget>[
//          Container(
//            padding: EdgeInsets.all(30.0),
//            color: Colors.green,
//            child: Text("one"),
//          ),
//           Container(
//            padding: EdgeInsets.all(20.0),
//            color: Colors.cyan,
//            child: Text("one"),
//          ),
//          Container(
//            padding: EdgeInsets.all(40.0),
//            color: Colors.purple,
//            child: Text("one"),
//          ),
//        ],
//      ),

//      Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: <Widget>[
//          Text("hellooooo"),
//          RaisedButton(onPressed: (){}),
//          Container(
//            color: Colors.blue,
//            padding: EdgeInsets.all(40),
//            child: Text("Ahmaaaaaaaaddd"),
//          )
//        ],
//      ),

//      Center(
//          child: RaisedButton.icon(
//              onPressed: () {},
//              icon: Icon(
//                  Icons.ac_unit,
//                color: Colors.blue,
//              ),
//              label: Text(
//                "helooooo",
//                style: TextStyle(
//                  color: Colors.blue
//                ),
//              ), color: Colors.green,
//          )

//        Icon(
//          Icons.accessible_forward,
//          size: 234,
//          color: Colors.orange[600],
//        )

//        Image.network("assets/mountain.jpg")

//        Text(
//          "hello Ningaaassss",
//          style: TextStyle(
//            fontSize: 30,
//            fontWeight: FontWeight.bold,
//            letterSpacing: 2.0,
//            color: Colors.amber,
//          ),
//        ),
//          ),

      floatingActionButton: InkWell(
        splashColor: Colors.blue,
        onLongPress: () {
          setState(() {
            ninjaLevel = 0;
          });
        },
        child: FloatingActionButton(
          backgroundColor: Colors.amber[900],
          onPressed: () {
            setState(() {
              ninjaLevel++;
            });
          },
          child: Icon(Icons.add),
          clipBehavior: Clip.hardEdge,
        ),
      ),
    );
  }
}