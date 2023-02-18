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
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                      child: Text("View A"),
                    ),
                    Positioned(
                      top: -10,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        child: Text("View B"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
