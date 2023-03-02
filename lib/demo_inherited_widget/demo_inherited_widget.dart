import 'package:flutter/material.dart';
import 'dart:math';
class DemoInheritedWidget extends StatefulWidget {

  @override
  State<DemoInheritedWidget> createState() => _DemoInheritedWidgetState();
}

class _DemoInheritedWidgetState extends State<DemoInheritedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Inherited Widget"),
      ),
      body: Container(
        child: Center(
          child: OngBaWidget(
            child: ChaMeWidget(
              key: UniqueKey(),
              child: ConCaiWidget(
                key: UniqueKey(),
              ),
            ),
          ),
        )
      ),
    );
  }
}

class OngBaWidget extends StatefulWidget {

  Widget child;

  OngBaWidget({required this.child});

  @override
  State<OngBaWidget> createState() => _OngBaWidgetState();
}

class _OngBaWidgetState extends State<OngBaWidget> {
  int number = 0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Ong Ba Widget"),
          Text("Random number: $number"),
          ElevatedButton(
              onPressed: () {
                  setState(() {
                    number = random.nextInt(100);
                  });
              },
              child: Text("random")
          ),
          CountInheritedWidget(child: widget.child, number: number)
        ],
      ),
    );
  }
}

class CountInheritedWidget extends InheritedWidget{

  int number;

  CountInheritedWidget({required super.child, required this.number});

  @override
  bool updateShouldNotify(covariant CountInheritedWidget oldWidget) {
    return true;
  }

  static CountInheritedWidget? of (BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

}

class ChaMeWidget extends StatefulWidget {

  Widget child;

  ChaMeWidget({required this.child, Key? key}): super(key: key);

  @override
  State<ChaMeWidget> createState() => _ChaMeWidgetState();
}

class _ChaMeWidgetState extends State<ChaMeWidget> {


  @override
  Widget build(BuildContext context) {
    CountInheritedWidget? countInheritedWidget = CountInheritedWidget.of(context);
    return Container(
      color: UniqueColor.getColor(),
      child: Column(
        children: [
          Text("Cha Me Widget"),
          Text("Number parent: ${countInheritedWidget?.number}"),
          widget.child
        ],
      ),
    );
  }
}

class ConCaiWidget extends StatefulWidget {

  ConCaiWidget({Key? key}): super(key: key);

  @override
  State<ConCaiWidget> createState() => _ConCaiWidgetState();
}

class _ConCaiWidgetState extends State<ConCaiWidget> {

  final Color color = UniqueColor.getColor();

  @override
  Widget build(BuildContext context) {
    print("Con")
    return Container(
      color: color,
      child: Column(
        children: [
          Text("Con Cai Widget")
        ],
      ),
    );
  }
}


class UniqueColor {
  static Color getColor() {
    var random = Random();
    return Color.fromARGB(250, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}