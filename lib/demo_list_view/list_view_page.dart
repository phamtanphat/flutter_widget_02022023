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
    listUsers = List.generate(10, (index) => User("User ${index + 1}", "${index + 1}")).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Page"),
        actions: [
          InkWell(
            child: Icon(Icons.add),
            onTap: () {
              String name = "";
              String age = "";
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Center(
                                child: Text(
                                    "ADD NEW USER",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red
                                    )
                                )
                            ),
                            SizedBox(height: 10),
                            TextField(
                              onChanged: (text) => name = text,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Input name",
                                  counterText: ""
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              onChanged: (text) => age = text,
                              keyboardType: TextInputType.number,
                              maxLength: 2,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Input age",
                                  counterText: ""
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                       setState(() {
                                         listUsers.add(User(name, age));
                                         Navigator.pop(context);
                                       });
                                    },
                                    child: Text("Add")
                                ),
                                ElevatedButton(
                                    onPressed: () {

                                    },
                                    child: Text("Cancel")
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }
              );
            },
          )
        ],
      ),
      body: Container(
        color: Colors.blue,
        constraints: BoxConstraints.expand(),
        child: ListView.builder(
          controller: ,
            reverse: true,
            itemCount: listUsers.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text("Name: ${listUsers[index].name}"),
                  subtitle: Text(
                    "Age: ${listUsers[index].age}",
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.delete, color: Colors.red),
                    onTap: () {
                      setState(() {
                        // listUsers.removeAt(index);
                      });
                    },
                  ),
                  leading: Image.network(
                    "https://user-images.githubusercontent.com/51419598/152648731-567997ec-ac1c-4a9c-a816-a1fb1882abbe.png",
                  ),
                ),
              );
            }
        )
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