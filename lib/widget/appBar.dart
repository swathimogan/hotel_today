import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/settings_screen.dart';
import '../utils/constants.dart';

class AppBarWidget extends StatefulWidget {
  final String title;
  final bool isFirstScreen;
  const AppBarWidget({Key? key, required this.title, this.isFirstScreen = false}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // automaticallyImplyLeading: true,
          leading:(!widget.isFirstScreen)?GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff686868),
              size: 35.sp,
            ),
          ):Container(),
          toolbarHeight: 70.sp,
          shape: Border(bottom: BorderSide(color: Color(0xffEEEEEE), width: 2)),
          centerTitle: true,
          title: Text(
            widget.title,
            style: TextStyle(
                color: appBarTitleColor,
                fontSize: 55.sp,
                fontFamily: 'Helvetica67-CondensedMedium Medium'
                //fontWeight: FontWeight.bold
                ),
          ),
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
                child: Image.asset('assets/images/settings.png',
                  width: 35.sp,
                )),
            SizedBox(
              width: 20,
            )
            // IconButton(
            //     onPressed: (){},
            //     icon: Icon(Icons.settings,
            //       color: Colors.grey,
            //       size: 35.sp,
            //     ))
          ],
        ),
      ],
    );
  }
}
