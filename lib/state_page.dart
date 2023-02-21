import 'package:flutter/material.dart';

class StatePage extends StatefulWidget {

  @override
  State<StatePage> createState() => _StatePageState();
}

// State Object
class _StatePageState extends State<StatePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final space = height / 50;
    return Scaffold(
      appBar: AppBar(
        title: Text("State Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Input number 1",
                counterText: ""
              ),
            ),
            SizedBox(
              height: space,
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Input number 2",
                counterText: ""
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, space, 0, 0),
                child: Text("Result")
            ),
            SizedBox(height: space),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("+")),
                ElevatedButton(onPressed: () {}, child: Text("-")),
              ],
            ),
            SizedBox(height: space),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("x")),
                ElevatedButton(onPressed: () {}, child: Text("/")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

