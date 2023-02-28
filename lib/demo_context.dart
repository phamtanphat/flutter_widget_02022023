import 'package:flutter/material.dart';

class DemoContextPage extends StatefulWidget {
  const DemoContextPage({Key? key}) : super(key: key);

  @override
  State<DemoContextPage> createState() => _DemoContextPageState();
}

class _DemoContextPageState extends State<DemoContextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo context"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Center(
          child: OngBaWidget(
            child: ChaMeWidget(
              child: ConCaiWidget()
            )
          ),
        ),
      ),
    );
  }
}

class OngBaWidget extends StatelessWidget {

  int number = 5;
  Widget child;

  OngBaWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Ong ba Widget"),
          child
        ],
      ),
    );
  }
}

class ChaMeWidget extends StatelessWidget {

  Widget child;

  ChaMeWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    OngBaWidget? ongBaWidget = context.findAncestorWidgetOfExactType();
    return Container(
      child: Column(
        children: [
          Text("Cha Me Widget"),
          Text("Gia tri cua ong ba ${ongBaWidget?.number}"),
          child
        ],
      ),
    );
  }
}

class ConCaiWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    OngBaWidget? ongBaWidget = context.findAncestorWidgetOfExactType();
    return Column(
      children: [
        Text("Con cai"),
        Text("Gia tri cua ong ba ${ongBaWidget?.number}"),
      ],
    );
  }
}




