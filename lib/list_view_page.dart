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
      body: Container(
        color: Colors.blue,
        constraints: BoxConstraints.expand(),
        child: ListView.builder(
            itemCount: listUsers.length,
            itemBuilder: (_, index) {
              return Card(
                child: ListTile(
                  title: Text("Name: ${listUsers[index].name}"),
                  subtitle: Text("Age: ${listUsers[index].age} jewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasdajewjwjdqosasdasdasdasdasda",
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  leading: Image.network(
                    "https://user-images.githubusercontent.com/51419598/152648731-567997ec-ac1c-4a9c-a816-a1fb1882abbe.png",
                  ),

                ),
              );
            }
        ),
      ),
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