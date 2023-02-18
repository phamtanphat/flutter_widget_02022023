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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Input number 1",
                suffixIcon: InkWell(
                  onTap: () {
                    print("Click icon");
                  },
                  child: Icon(Icons.lock),
                )
              ),
            ),
            TextField(),
          ],
        ),
      ),
    );
  }
}

