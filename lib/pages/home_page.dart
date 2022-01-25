import 'package:a3_frontend/assets/colors.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Container(

        padding: const EdgeInsets.only(top: 50,left: 20,right:20),
        child: SingleChildScrollView(

          child: Column(// body column
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('Hello,',style: TextStyle(fontSize:20,color: AppColor.mainColor,fontWeight:FontWeight.w600,fontFamily: 'OpenSans'),),
                      SizedBox(height:8),
                      Text('Landrada !',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600,fontFamily: 'OpenSans'),)

                    ],
                  ),

                  Expanded(child: Container()),
                  Container(
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 20, color: Colors.grey[400], spreadRadius: 0.4)],
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/profile.jpg'),
                      radius: 30,

                    ),
                  ),

                ],
              ),
              SizedBox(height: 10),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.calendar_today_outlined,size: 28,),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4,horizontal: 16),
                    padding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                    decoration: BoxDecoration(
                      color: AppColor.mainColor.withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Text('24 Jan 2022',
                    style: TextStyle(fontSize: 14,fontFamily: 'OpenSans',fontWeight:FontWeight.bold) ,),
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: TextField(

                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColor.lightGrey, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColor.mainColor, width: 1),
                    ),
                    border: OutlineInputBorder(

                    ),

                    hintText: ' Search ',
                    suffixIcon: Icon(Icons.search,size:20,color: AppColor.mainColor.withOpacity(0.46)),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text('Categories',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600,fontFamily: 'OpenSans'),),
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children:[

                  SizedBox(
                    height: 150,

                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index)=>Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all( Radius.circular(10)),
                          boxShadow: [BoxShadow(blurRadius: 15, color: Colors.grey[200], spreadRadius: 1)],
                        ),

                        child:InkWell(
                          onTap: (){
                            Navigator.pushNamed(context,'/categoryList');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  SizedBox(height: 10,),
                                  Text('projects',style: TextStyle(fontSize: 18,color:Colors.black,fontWeight:FontWeight.w600,fontFamily: 'OpenSans'),),
                                  SizedBox(height: 20,),
                                  Text('12 aspirations',style: TextStyle(fontSize: 14,color:Colors.black,fontWeight:FontWeight.w500,fontFamily: 'OpenSans'),),

                                ]

                            ),
                          ),
                        ),
                      ),
                    ),

                  ),
                ]
              ),
              SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text('Aspirations',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600,fontFamily: 'OpenSans'),),
                ],
              ),
              SizedBox(height: 30,),

      Flexible(

          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index)=>
                Container(
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 0),
                    height: 70,

                  width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      border: Border(
                    left: BorderSide(
                    color: AppColor.mainColor,
                      width: 5,
                    ),
                ),
                      // borderRadius: BorderRadius.all( Radius.circular(10)),
                      boxShadow: [BoxShadow(blurRadius: 15, color: Colors.grey[200], spreadRadius: 1)],
                    ),
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text('A3 frontend',style: TextStyle(fontSize: 18,fontWeight:FontWeight.normal,fontFamily: 'OpenSans'),),
                      SizedBox(height: 8),
                      Text('projects',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w300,fontFamily: 'OpenSans'),),

                    ],
                  ),
                    Expanded(child: Container()),
                  IconButton(icon:Icon(Icons.keyboard_arrow_right,size: 30,color: AppColor.mainColor,), onPressed: ()=>{})
                ]),
              ),
                  )
              ),
      )],
          ),
        ),
      ),
    );
  }
}
