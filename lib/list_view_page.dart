import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  late List<User> listUsers;

  @override
  void initState() {
    super.initState();
    listUsers = List.generate(10, (index) => User("User ${index + 1}", "${index + 10}"));
    listUsers.forEach((element) { print(element.toString()); });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Page"),
      ),
      body: Container(),
    );
  }
}


class User {
  String name;
  String age;

  User(this.name, this.age);

  @override
  String toString() {
    return 'User{name: $name, age: $age}';
  }
}