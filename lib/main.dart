//Nested ListViwe
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 189, 204, 230),
        ),
        body: ListView(
          //parent listView

          // physics: NeverScrollableScrollPhysics(),
          physics: BouncingScrollPhysics(), //like refresh in facebook
          // scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 200,
              height: 300,
              color: Colors.amber,
              child: Text(
                "Hello  first",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              // width: 200, //if we want scroll horizentel
              height: 300,
              child: ListView(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    width: 200,
                    height: 300,
                    color: Color.fromARGB(255, 231, 181, 198),
                    child: Text(
                      "Hello second first",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 300,
                    color: Color.fromARGB(255, 247, 231, 184),
                    child: Text(
                      "Hello second second",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ), //insider listView
            ),
            Container(
              width: 200,
              height: 300,
              color: Colors.red,
              child: Text(
                "Hello Third",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              width: 200,
              height: 300,
              color: Colors.blue,
              child: Text(
                "Hello first",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              width: 200,
              height: 300,
              color: Colors.green,
              child: Text(
                "Hello first",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              width: 200,
              height: 300,
              color: Colors.purple,
              child: Text(
                "Hello first",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ));
  }
}
