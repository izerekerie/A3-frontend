
import 'package:a3_frontend/navigations/main_navigation.dart';
import 'package:a3_frontend/pages/categories.dart';
import 'package:a3_frontend/pages/category_list.dart';

import 'package:a3_frontend/pages/welcome_page.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/home',
  routes: {
  // '/':(context)=>WelcomePage(),

     '/home':(context)=>MainPage(),
    '/categories':(context)=>CategoryListPage(),
    '/categoryList':(context)=>CategoryList(),


  },
));

