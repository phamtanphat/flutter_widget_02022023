import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black),
                    )
                  ),
                  child: Text("1"),
                )
            ),
            Expanded(
                flex: 7,
                child: Container(

                )
            )
          ],
        ),
      ),
    );
  }
}
