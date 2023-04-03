import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('At Hotel Today we\'ve said goodbye to endless scrolling. Booking travel should be fen, easy, and instant.',
        style: TextStyle(
          fontSize: 18.sp,
          height: 1.8
        ),
        ),
        SizedBox(
          height: 20.sp,
        ),
        Text('For planners and jet setters alike, we\'ve built the best way to find deals tonight, tomorrow, or beyond. We only work with hotels We\'d want to stay at too.',
          style: TextStyle(
              fontSize: 18.sp,
              height: 1.8
          ),
        ),
        SizedBox(
          height: 20.sp,
        ),
        Text('Give us ten seconds and we\'ll find you your soon-to-be-favorite spot. With Hotel Today, you\'ll spend less time planning and more time living. Isn\'t that kind of the point?',
          style: TextStyle(
              fontSize: 18.sp,
              height: 1.8
          ),
        ),
        SizedBox(
          height: 20.sp,
        ),
        Text('We seek to excite customers with great value, flexibility, and the spontaneous joy of last minute. booking.',
          style: TextStyle(
              fontSize: 18.sp,
              height: 1.8
          ),
        )
      ],
    );
  }
}
