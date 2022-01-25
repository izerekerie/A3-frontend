
import 'package:flutter/material.dart';
class ListPage extends StatefulWidget {

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Aspirations'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple
      ),
      body:Column(
        children: <Widget>[
         Text('List of aspirations',style: TextStyle(fontSize: 40)),
          Card(
            shape: Border(left: BorderSide(color: Colors.indigo, width: 5)),
            elevation: 4,
            color: Colors.white,
            margin: EdgeInsets.symmetric(
              vertical: 20,horizontal: 10
            ),
            child: Column(
                children: <Widget>[
             ListTile(
                title: Text('A3 frontend '),
               subtitle: Text('Projects'),
            ),


           ]),
          )] ));
  }
}
