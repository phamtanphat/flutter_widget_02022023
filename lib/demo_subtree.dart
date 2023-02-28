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
    listWidget.add(SizedBox(child: UniqueColorWidget(GlobalKey())));
    listWidget.add(SizedBox(child: UniqueColorWidget(GlobalKey())));
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

class UniqueColorWidget extends StatefulWidget {

  UniqueColorWidget(Key key): super(key: key);

  @override
  State<UniqueColorWidget> createState() => _UniqueColorWidgetState();

  static Color getColor() {
    var random = Random();
    return Color.fromARGB(250, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }

}

class _UniqueColorWidgetState extends State<UniqueColorWidget> {
  final Color color = UniqueColorWidget.getColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }
}


