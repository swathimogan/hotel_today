import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/appBar.dart';
import 'homepage.dart';

class ThankYouScreen extends StatefulWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  State<ThankYouScreen> createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.sp),
          child: AppBarWidget(title: 'HOTEL TODAY')),
      body: Padding(
        padding: EdgeInsets.only(top: 40.sp),
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Center(
                child: Image.asset('assets/images/thank_you.png',
                width: 490.sp,
                ),
              ),
            SizedBox(height: 40,),
            Text('We will get back to you if your room is available.',
            style: TextStyle(
              fontSize: 20.sp
            ),
            )
          ],
        ),
      ),
    );
  }
}
