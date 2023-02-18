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
              ),
            ),
            TextField(),
            Container(
                margin: EdgeInsets.fromLTRB(0,  height / 20, 0, 0),
                child: Text("Result")
            ),
            ElevatedButton(onPressed: () {}, child: Text("+"))
          ],
        ),
      ),
    );
  }
}

