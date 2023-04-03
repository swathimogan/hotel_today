import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_today/utils/constants.dart';

class AmenitiesWidget extends StatefulWidget {

  final Map<String, dynamic> data;

  const AmenitiesWidget({Key? key, required this.data}) : super(key: key);

  @override
  State<AmenitiesWidget> createState() => _AmenitiesWidgetState();
}

class _AmenitiesWidgetState extends State<AmenitiesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // Image.network('https://static.theprint.in/wp-content/uploads/2022/10/Hotel.jpg',
        //   height: 600,
        //   width: 600,
        //   fit: BoxFit.fill,
        // ),
        //

        GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15.0,
              //mainAxisSpacing: 10.0
              childAspectRatio: 1.5.sp,
              mainAxisExtent: 410.sp
          ),
          children: [
            Image.asset(widget.data['image_asset'],
              fit: BoxFit.fill,
              //height: 400,
            ),

            // Image.network('https://static.theprint.in/wp-content/uploads/2022/10/Hotel.jpg',
            //   // height: 100,
            //   // width: 100,
            //   fit: BoxFit.fill,
            // ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${widget.data['name']}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Row(
                  children: [
                    Icon(Icons.place,
                      color: Colors.black,
                      size: 30.sp,
                    ),
                    Text(widget.data['address'],
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                          fontSize: 20.sp
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
                ClipRect(
                  child: Text(widget.data['description'],
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      height: 1.8.sp,
                        fontSize: 20.sp
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 20.sp,
                // ),
                // Text('\$${widget.data['price']}',
                //   style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 40.sp
                //   ),
                // )
              ],
            )
          ],
        ),

        SizedBox(
          height: 10,
        ),

        Text('Amenities',
        style: TextStyle(
          fontSize: 30.sp,
          color: appBarTitleColor
        ),
        ),

        SizedBox(
          height: 10,
        ),

        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.data['amenities'].length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 7.sp,
            ),
          itemBuilder: (context, index) {
            return Row(
              children: [
                Image.asset(widget.data['amenities'][index]['image_asset'],
                width: 50.sp,
                ),
                SizedBox(
                  width: 10.sp
                ),
                Expanded(
                  child: Text(widget.data['amenities'][index]['name'],
                    //maxLines: 3,
                    style: TextStyle(
                        fontSize: 18.sp,
                      height: 1.8.sp
                    ),
                  ),
                )
              ],
            );
          }
        )
      ]
    );
  }
}
