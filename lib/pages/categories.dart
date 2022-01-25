
import 'dart:math';

import 'package:a3_frontend/assets/colors.dart';
import 'package:flutter/material.dart';

class CategoryListPage extends StatefulWidget {

  @override
  _CategoryListPageState createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  String selectedId='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(

        child: SingleChildScrollView(

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //header
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: AppColor.mainColor,
                ),

                child: Row(

                  children: <Widget>[
                    IconButton(icon: Icon(Icons.keyboard_arrow_left,color: Colors.white,size: 30,), onPressed: (){
                      Navigator.pushNamed(context,'/home');
                    }),
                    // Expanded(child: Container()),
                    Padding(

                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 30),
                      child: Text('Categories',
                        style: TextStyle(
                            color: Colors.white,fontFamily: 'OpenSans',fontSize: 18,fontWeight:FontWeight.bold

                        ),),
                    ),
                    Expanded(child: Container()),
                    IconButton(icon: Icon(Icons.more_vert_rounded,size: 30,color: Colors.white,),onPressed:(){})
                  ],
                ),
              ),

              //Container
              Flexible(

                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: ListView.builder(
                      itemCount: 15,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>  Container(
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(blurRadius: 15, color: Colors.grey[200], spreadRadius: 1)],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0)),
                        ),

                        margin: EdgeInsets.symmetric(vertical:10,horizontal: 0),
                        height: 140,


                        child:  SizedBox(


                          child: Row(

                              children: <Widget>[
                                Container(
                                  width: 120,
                                  decoration: BoxDecoration(

                                    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(15.0),
                                        bottomLeft: Radius.circular(15.0)),
                                  ),

                                   child: Column(
                                     children: <Widget>[
                                       SizedBox(height: 30,),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Text('50',style: TextStyle(
                                           fontSize: 30,color: Colors.white,
                                         ),),
                                       ),
                                       SizedBox(height: 10,),
                                       Expanded(

                                         child: Text('A3 frontend',maxLines: 4,
                                           style: TextStyle(fontSize: 16,fontWeight:FontWeight.normal,fontFamily: 'OpenSans',color: Colors.white),),
                                       ),

                                     ],
                                   ),
                                ),
                                SizedBox(width: 15,),
                                Expanded(

                                  child: Text('An application tah am working on with lando',maxLines: 4,
                                  style: TextStyle(fontSize: 16,fontWeight:FontWeight.normal,fontFamily: 'OpenSans'),),
                                ),


                                Column(
                                  children: [
                                    SizedBox(height: 80,),
                                    IconButton(icon:Icon( selectedId == index.toString() ? Icons.check_box_rounded: Icons.check_box_outline_blank,size: 24,color: AppColor.mainColor,), onPressed: ()=>{
                                      setState(() {
                                        selectedId = index.toString();
                                      })
                                    }),
                                  ],
                                )
                              ]),
                        ),
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
