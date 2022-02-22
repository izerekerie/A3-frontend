
import 'package:a3_frontend/assets/colors.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(
        child:
      Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(icon: Icon(Icons.keyboard_arrow_left,size: 30,), onPressed: (){
                  Navigator.pushNamed(context,'/home');
                }),


              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Profile Settings',style: TextStyle(
                      fontFamily: 'OpenSans',fontSize: 20,fontWeight: FontWeight.w800),),
                ),
              ],
            ),
            SizedBox(height: 40,),

            // edit button


            Container(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 20),
              decoration: BoxDecoration(

                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all( Radius.circular(10)),
                boxShadow: [BoxShadow(blurRadius: 20, color: AppColor.lightGrey, spreadRadius: 1)],
              ),
              child: Row(
                children: [
                  Icon(Icons.edit_rounded,size: 24,),
                  SizedBox(width: 20,),
                  Text('Edit profile',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w400
                  ),),
                ],
              ),
            ),

            // change password

            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 20),
              decoration: BoxDecoration(

                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all( Radius.circular(10)),
                boxShadow: [BoxShadow(blurRadius: 20, color: AppColor.lightGrey, spreadRadius: 1)],
              ),
              child: Row(
                children: [
                  Icon(Icons.lock_outline,size: 24,),
                  SizedBox(width: 20,),
                  Text('Change password',style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w400
                  ),),
                ],
              ),
            ),

            //Notification button

            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 20),
              decoration: BoxDecoration(

                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all( Radius.circular(10)),
                boxShadow: [BoxShadow(blurRadius: 20, color: AppColor.lightGrey, spreadRadius: 1)],
              ),
              child: Row(
                children: [
                  Icon(Icons.notifications_none_rounded,size: 24,),
                  SizedBox(width: 20,),
                  Text('Notifications',style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w400
                  ),),
                  Expanded(child: Container()),
                  Icon(Icons.toggle_on,size: 30, color: AppColor.mainColor,),
                ],
              ),
            ),

            //Logout

            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 20),
              decoration: BoxDecoration(

                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all( Radius.circular(10)),
                boxShadow: [BoxShadow(blurRadius: 20, color: AppColor.lightGrey, spreadRadius: 1)],
              ),
              child: Row(
                children: [
                  Icon(Icons.logout,size: 24,),
                  SizedBox(width: 20,),
                  Text('Logout',style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w400
                  ),),
                ],
              ),
            )

          ],
        ),
      ),

      ),
    );
  }
}
