import 'dart:math';

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
            child: Container(
              child: OngBaWidget(
                child: ChaMeWidget(
                  child: ConCaiWidget()
                ),
              ),
            )
          ),
        ),
      ),
    );
  }
}

class OngBaWidget extends StatelessWidget {

  int number = Random().nextInt(100);
  Widget child;

  OngBaWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Ong ba Widget $number"),
          child
        ],
      ),
    );
  }
}

class ChaMeWidget extends StatelessWidget {

  String text = "abc";
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
    ChaMeWidget? chaMeWidget = context.findAncestorWidgetOfExactType();
    return Column(
      children: [
        Text("Con cai"),
        Text("Gia tri cua ong ba ${ongBaWidget?.number}"),
        Text("Gia tri cua chame ${chaMeWidget?.text}"),
      ],
    );
  }
}




