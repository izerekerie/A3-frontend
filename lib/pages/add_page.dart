import 'package:a3_frontend/assets/colors.dart';
import 'package:flutter/material.dart';
class AddPage extends StatefulWidget {

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final categories=['Studying','Projects','New Skills'];
  String? selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(height: 20),
                IconButton(icon: Icon(Icons.keyboard_arrow_left,size: 30,), onPressed: (){
                  Navigator.pushNamed(context,'/home');
                }),
                SizedBox(height: 10),

                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                    backgroundImage: AssetImage('images/profile.jpg'),
                    radius: 40,

                  )],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Write your aspiration',
                      style: TextStyle(
                          color: AppColor.mainColor,fontSize: 20,fontWeight:FontWeight.bold,
                          fontFamily: 'OpenSans'
                      ),)
                  ],
                ),
                SizedBox(height: 20),

                //name input

                Column(

                  children: [
                    Container(
                      width: 450,
                      decoration: BoxDecoration(

                      ),
                      padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 40),
                      child: TextFormField(

                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.mainColor),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                 color: AppColor.grey),
                            ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 0),
                            labelText: 'Enter aspiration name',
                            labelStyle: TextStyle(
                              color: AppColor.grey,fontSize: 16
                            )


                        ),

                      ),
                    )

              ],

            ),


             //description input


                Column(

                  children: [
                    Container(
                      width: 450,

                      padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 40),
                      child: TextFormField(

                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.mainColor),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.grey),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 0),
                            labelText: 'Enter aspiration description',
                            labelStyle: TextStyle(
                                color: AppColor.grey,fontSize: 16
                            )


                        ),

                      ),
                    )

                  ],

                ),
                   SizedBox(height: 10,),
              Container(
              width: 450,
              decoration: BoxDecoration(

              ),
              padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 40),
                child: Row(
                  children: [
                    Text('Category :',style: TextStyle(color: AppColor.grey,fontSize: 16),


                ),
                 SizedBox(width: 20,),
                  Flexible(
                    child: DropdownButtonFormField<String>(
                         // decoration: InputDecoration(
                         //  enabledBorder: OutlineInputBorder(
                         //     borderRadius: BorderRadius.circular(12),
                         //     borderSide: BorderSide(width:2,color: AppColor.mainColor )
                         //   )
                         // ),
                         value: selectedCategory,
                        items: categories.map((cat)=>DropdownMenuItem<String>(
                            value:cat,
                          child: Text(
                            cat,style: TextStyle(fontSize: 16,),
                          ),
                        ))
                       .toList(),
                      onChanged: (cat)=>setState(()=>selectedCategory=cat),
                    ),
                  )
                  ],
              )

              ),
              SizedBox(height: 10,),

              // choose dates


              Container(
                width: 450,
                padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 40),
                child: Row(
                  children: <Widget>[
                    //start date
                    Column(
                      children: <Widget>[
                        Text('Start Date', style: TextStyle(
                            fontSize: 16,color:AppColor.grey,fontFamily: 'OpenSans'
                        ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 10),
                          decoration: BoxDecoration(

                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all( Radius.circular(10)),
                            boxShadow: [BoxShadow(blurRadius: 20, color: AppColor.lightGrey, spreadRadius: 1)],
                          ),
                          child: Row(
                            children: [
                              Text('10 Nov 2021', style: TextStyle(fontSize: 14,color: AppColor.grey, fontFamily: 'OpenSans'),),
                              SizedBox(width: 10,),
                              Icon(Icons.calendar_today_outlined,color: AppColor.grey,)
                            ],
                          ),
                        )
                      ],
                    ),
                    //End Date
                    Expanded(child: Container()),
                    Column(
                      children: <Widget>[
                        Text('End Date', style: TextStyle(
                            fontSize: 16,color:AppColor.grey,fontFamily: 'OpenSans'
                        ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 10),
                          decoration: BoxDecoration(

                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all( Radius.circular(10)),
                            boxShadow: [BoxShadow(blurRadius: 20, color: AppColor.lightGrey, spreadRadius: 1)],
                          ),
                          child: Container(
                            child: Row(
                              children: [
                                Text('10 Mar 2022', style: TextStyle(fontSize: 14,color: AppColor.grey, fontFamily: 'OpenSans'),),
                                SizedBox(width: 10,),
                                Icon(Icons.calendar_today_outlined,color: AppColor.grey,)
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
                // save button
                SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical:0,horizontal: 30),
                  child: Row(
                    children: [
                  TextButton(
                  child: Text("Save"),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: AppColor.mainColor,
              elevation: 6,
              minimumSize: Size(330,50),
              shadowColor: AppColor.lightGrey,
            ),
            onPressed:() {

            },
          )

                    ],
                  ),
                )
              ]
            ),



    )
        ),
      ));
    }
}

