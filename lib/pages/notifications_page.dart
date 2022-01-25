
import 'package:flutter/material.dart';
class NotifyPage extends StatefulWidget {

  @override
  _NotifyPageState createState() => _NotifyPageState();
}

class _NotifyPageState extends State<NotifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Notifications'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple
      ),
      body:Center(child: Text('Notifications',style: TextStyle(fontSize: 40))),
    );
  }
}
