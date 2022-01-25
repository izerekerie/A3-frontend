
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('profile'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple
      ),
      body:Center(child: Text('Profile settings',style: TextStyle(fontSize: 40))),
    );
  }
}
