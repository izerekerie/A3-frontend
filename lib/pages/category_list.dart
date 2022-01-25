import 'package:a3_frontend/assets/colors.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
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
                child: Text('A3 Frontend',
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
                    child: SizedBox(


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
                      IconButton(icon:Icon( selectedId == index.toString() ? Icons.check_box_rounded: Icons.check_box_outline_blank,size: 24,color: AppColor.mainColor,), onPressed: ()=>{
                      setState(() {
                      selectedId = index.toString();
                      })
                      })
                      ]),
                    ),
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
