import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Neer Express"),
      ),
      drawer: Drawer(
        child: Container(
          width: size.width - 30,
          child: Column(
            children: [
              Container(
                height: 200,
              ),
              ExpansionTile(
                leading: Icon(Icons.home),
                title: Text("Expansion Title"),
                children: <Widget>[
                  Divider(),
                  ListTile(
                    title: Text("children 1"),
                  ),
                  Divider(),
                  ListTile(title: Text("children 2"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
