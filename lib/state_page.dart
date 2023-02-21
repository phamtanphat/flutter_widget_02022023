import 'package:flutter/material.dart';

class StatePage extends StatefulWidget {

  @override
  State<StatePage> createState() => _StatePageState();
}

// State Object
class _StatePageState extends State<StatePage> {

  late TextEditingController inputNumber1Controller, inputNumber2Controller;
  num result = 0;

  @override
  void initState() {
    super.initState();
    inputNumber1Controller = TextEditingController();
    inputNumber2Controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final space = height / 50;
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        constraints: const BoxConstraints.expand(),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 5,
              controller: inputNumber1Controller,
              decoration: const InputDecoration(
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
              controller: inputNumber2Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Input number 2",
                counterText: ""
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, space, 0, 0),
                child: Text("Result: $result")
            ),
            SizedBox(height: space),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  int number1 = int.parse(inputNumber1Controller.text);
                  int number2 = int.parse(inputNumber2Controller.text);
                  result = number1 + number2;
                  setState(() {

                  });
                }, child: const Text("+")),
                ElevatedButton(onPressed: () {

                }, child: const Text("-")),
              ],
            ),
            SizedBox(height: space),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {

                }, child: const Text("x")),
                ElevatedButton(onPressed: () {

                }, child: const Text("/")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

