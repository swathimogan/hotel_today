import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_today/screens/about_screen.dart';
import 'package:hotel_today/screens/support_screen.dart';
import 'package:hotel_today/utils/constants.dart';

import '../widget/appBar.dart';
import 'faq_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  int selectedIndex = 0;

  changeScreen(int i){
    setState(() {
      selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.sp),
          child: AppBarWidget(title: 'SETTINGS')),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ListTile(
                    onTap:(){
                      changeScreen(0);
                      },
                    leading: Text('FAQ',
                    style: TextStyle(
                      fontSize: 23.sp,
                      color: (selectedIndex==0)? appBarTitleColor:Colors.black
                    ),
                    ),
                    visualDensity: VisualDensity(vertical: 2),
                    trailing: Icon(Icons.arrow_forward_ios,
                    color: (selectedIndex==0)? appBarTitleColor:Colors.black,
                      size: 30.sp,
                    ),
                    shape: Border(
                      bottom: BorderSide(
                          color: Colors.black12
                      ),
                    ),
                  ),
                  ListTile(
                    onTap:(){
                      changeScreen(1);
                    },
                    leading: Text('About Hotel Today',
                      style: TextStyle(
                          fontSize: 23.sp,
                          color: (selectedIndex==1)? appBarTitleColor:Colors.black
                      ),
                    ),
                    visualDensity: VisualDensity(vertical: 2),
                    trailing: Icon(Icons.arrow_forward_ios,
                      color: (selectedIndex==1)? appBarTitleColor:Colors.black,
                      size: 30.sp,
                    ),
                    shape: Border(
                      bottom: BorderSide(
                          color:Colors.black12
                      ),
                    ),
                  ),
                  ListTile(
                    onTap:(){
                      changeScreen(2);
                    },
                    visualDensity: VisualDensity(vertical: 2),
                    leading: Text('Support',
                      style: TextStyle(
                          fontSize: 23.sp,
                          color: (selectedIndex==2)? appBarTitleColor:Colors.black
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,
                      color: (selectedIndex==2)? appBarTitleColor:Colors.black,
                      size: 30.sp,
                    ),
                    shape: Border(
                      bottom: BorderSide(
                          color: Colors.black12
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: (selectedIndex == 0)?FAQScreen():(selectedIndex==1)?AboutScreen():SupportScreen(),
              )

            )
          ],
        ),
      ),
    );
  }
}
