import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_today/utils/constants.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      //color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('We would love to hear from you!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
          ),
          ),
          Text('For any questions or converns please email us at',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
            ),
          ),
          Text('info@hoteltoday.com',
            style: TextStyle(
              color: appBarTitleColor,
              fontSize: 18.sp,
            ),
          )
        ],
      ),
    );
  }
}
