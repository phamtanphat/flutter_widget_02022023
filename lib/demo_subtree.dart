import 'package:flutter/material.dart';
import 'dart:math';

class DemoSubTreePage extends StatefulWidget {

  @override
  State<DemoSubTreePage> createState() => _DemoSubTreePageState();
}

class _DemoSubTreePageState extends State<DemoSubTreePage> {

  final List<Widget> listWidget = [];

  @override
  void initState() {
    super.initState();
    listWidget.add(UniqueColorWidget());
    listWidget.add(UniqueColorWidget());
  }

  void swapWidget() {
    setState(() {
      var temp = listWidget[0];
      listWidget.removeAt(0);
      listWidget.add(temp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Subtree"),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: listWidget,
            ),
            ElevatedButton(
                onPressed: swapWidget,
                child: Text("Swap color")
            )
          ],
        ),
      ),
    );
  }
}

class UniqueColorWidget extends StatelessWidget {
  final Color color = getColor();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }

  static Color getColor() {
    var random = Random();
    return Color.fromARGB(250, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}

