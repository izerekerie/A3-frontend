import 'package:flutter/material.dart';
class AddPage extends StatefulWidget {

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('add aspiration'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple
      ),
      body:Center(child: Text('Add new',style: TextStyle(fontSize: 40))),
    );
  }
}
