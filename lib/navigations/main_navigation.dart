import 'package:a3_frontend/assets/colors.dart';
import 'package:a3_frontend/pages/add_page.dart';
import 'package:a3_frontend/pages/home_page.dart';
import 'package:a3_frontend/pages/list_page.dart';
import 'package:a3_frontend/pages/notifications_page.dart';
import 'package:a3_frontend/pages/profile_page.dart';
import 'package:flutter/material.dart';



class MainPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {

  int _selectedItem=0;
  final screens=[
    HomePage(),
    ListPage(),
    AddPage(),
    NotifyPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: CustomBottomNavigationBar(

        iconList: [
          Icons.home_filled,
          Icons.list,
          Icons.add,
          Icons.notifications,
          Icons.person
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 0,
      ),

      body:   screens[_selectedItem],
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
        @required this.iconList,
        @required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {

    return GestureDetector(

      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: (MediaQuery.of(context).size.width / _iconList.length),
        decoration: index == _selectedIndex
            ? BoxDecoration(

            border: Border(

              bottom: BorderSide(width: 4, color: AppColor.mainColor),
            ),
            gradient: LinearGradient(colors: [
              AppColor.mainColor.withOpacity(0.05),
              AppColor.mainColor.withOpacity(0.015),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
          // color: index == _selectedItemIndex ? Colors.green : Colors.white,
        )
            : BoxDecoration(),
        child: Container(
          width: MediaQuery.of(context).size.width-20,
          decoration: BoxDecoration(

              borderRadius: BorderRadius.all(Radius.circular(100)),
                  // color: AppColor.mainColor,
          ),
          child: Icon(
            icon,
            color: index == _selectedIndex ? AppColor.mainColor : Colors.black26,
          ),
        ),
      ),
    );
  }
}