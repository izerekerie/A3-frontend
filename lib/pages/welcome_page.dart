import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.fromLTRB(70,200,0,0),
          child: Column(

            children:<Widget> [
             TextButton(onPressed:(){
               Navigator.pushNamed(context,'/home');
             },
               child: Text('Get Started',style: TextStyle(fontSize: 20),),
               style: TextButton.styleFrom(
                 primary: Colors.white,

                 backgroundColor: Colors.deepPurple,
                 elevation: 10,
                 shadowColor: Colors.deepPurple,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 padding: EdgeInsets.symmetric(
                   vertical: 20,horizontal: 50
               ),

             )
             )],
          ),
        ),
      ),
    );
  }
}
