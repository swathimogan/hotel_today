import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';
import '../widget/amenities_widget.dart';
import '../widget/appBar.dart';
import 'booking_screen.dart';

class VeniceSuiteDetails extends StatefulWidget {

  final Map<String, dynamic> details;


  const VeniceSuiteDetails({Key? key, required this.details}) : super(key: key);

  @override
  State<VeniceSuiteDetails> createState() => _VeniceSuiteDetailsState();
}

class _VeniceSuiteDetailsState extends State<VeniceSuiteDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.sp),
          child: AppBarWidget(title: 'Venice Suites')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AmenitiesWidget(data: widget.details),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Room Types',
                    style: TextStyle(fontSize: 30.sp, color: appBarTitleColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // GridView.builder(
                  //     shrinkWrap: true,
                  //     physics: NeverScrollableScrollPhysics(),
                  //     itemCount: details['room_types'].length,
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 3,
                  //       childAspectRatio: 7,
                  //     ),
                  //     itemBuilder: (context, index) {
                  //       return Column(
                  //         children: [
                  //           Row(
                  //             children: [
                  //               Text('${details['room_types'][index]['types']}',
                  //                 style: TextStyle(
                  //                     fontSize: 18.sp
                  //                 ),
                  //               ),
                  //               Spacer(),
                  //               Text('\$${details['room_types'][index]['price']}',
                  //                 style: TextStyle(
                  //                     fontSize: 18.sp
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       );
                  //     }
                  // ),
                  //Room Types
                  GridView.builder(
                    itemCount: widget.details['room_types'].length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 30.0,
                        //mainAxisSpacing: 10.0,
                        //mainAxisExtent: 750.sp,
                        childAspectRatio: 10.sp
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.sp),
                              child: Row(
                                children: [
                                  Text('${widget.details['room_types'][index]['types']}',
                                    style: TextStyle(
                                        fontSize: 18.sp
                                    ),
                                  ),
                                  Spacer(),
                                  Text('\$${widget.details['room_types'][index]['price']}',
                                    style: TextStyle(
                                        fontSize: 18.sp
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5.sp,),
                            Divider(
                              thickness: 1,
                            )
                          ],
                        );
                      },
                  ),
                  Text('FAQ',
                    style: TextStyle(fontSize: 30.sp, color: appBarTitleColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    itemCount: widget.details['faq'].length,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 30.0,

                        //mainAxisSpacing: 10.0,
                        mainAxisExtent: 200.sp,
                        childAspectRatio: 3.sp
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${widget.details['faq'][index]['question']}',
                            style: TextStyle(
                                fontSize: 26.sp,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Text('${widget.details['faq'][index]['answer']}',
                            style: TextStyle(
                                fontSize: 18.sp,
                                height: 1.8.sp
                            ),
                          ),
                        ],
                      );
                    },
                  ),

                  //RoomTypes and FAQ
                  /*GridView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    // crossAxisCount: 2,
                    // crossAxisSpacing: 15,
                    //mainAxisExtent: 300,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 10.0,
                      mainAxisExtent: 750.sp,
                      //childAspectRatio: 15/10
                    ),
                    //maxCrossAxisExtent: 200.0,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Room Types',
                              style: TextStyle(fontSize: 30.sp, color: appBarTitleColor),
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),


                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: details['room_types'].length,
                                itemBuilder: (BuildContext context, index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 5.sp),
                                        child: Row(
                                          children: [
                                            Text('${details['room_types'][index]['types']}',
                                              style: TextStyle(
                                                  fontSize: 18.sp
                                              ),
                                            ),
                                            Spacer(),
                                            Text('\$${details['room_types'][index]['price']}',
                                              style: TextStyle(
                                                  fontSize: 18.sp
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        thickness: 1,
                                      )
                                    ],
                                  );
                                }),
                            SizedBox(height: 10.sp),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('FAQ',
                            style: TextStyle(fontSize: 30.sp, color: appBarTitleColor),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: details['faq'].length,
                              itemBuilder: (BuildContext context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${details['faq'][index]['question']}',
                                      style: TextStyle(
                                          fontSize: 26.sp,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.sp,
                                    ),
                                    Text('${details['faq'][index]['answer']}',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          height: 1.8
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.sp,
                                    ),
                                  ],
                                );
                              }),
                        ],
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 80.sp,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookingScreen()),
                    );
                  },
                  child: Text('Book Now',
                    style: TextStyle(
                        fontSize: 30.sp
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

  /*Map<String, dynamic> details = {
  "name":"Venice Suites",
  "image_asset":"assets/images/venice_suite_1.jpeg",
  "address": "417 Ocean Front Walk, Venice, CA 90291",
  "description":"The Best Place to Stay on Venice Beach and the Boardwalk!\n\nGet ready to experience the best place to stay on Venice Beach and the Boardwalk! Venice Suites places you right in the action of Venice Beach’s famous sights and bustling skate culture. \n\nEnjoy special savings of 10% off when you book your stay directly with us!",
  "price":"288",
    "amenities": [
      {
        "name": "Premium cable TVs",
        "image_asset": "assets/images/amenities/television.png"
      },
      {
        "name": "Housekeeping every day",
        "image_asset": "assets/images/amenities/cleaner.png"
      },
      {"name": "A coin-operated laundry facility", "image_asset": "assets/images/amenities/washing-machine.png"},
      {
        "name": "Sofa Pullout",
        "image_asset": "assets/images/amenities/sofa_pullout.png"
      },
      {
        "name": "Pet Friendly",
        "image_asset": "assets/images/amenities/pet_friendly.png"
      },
      {
        "name": "A picturesque rooftop deck with sweeping ocean views and barbecue",
        "image_asset": "assets/images/amenities/beach.png"
      },
      {"name": "Free high-speed Wi-Fi In-room telephone service", "image_asset": "assets/images/amenities/wifi.png"},
      {"name": "Free high-speed Wi-Fi In-room telephone service", "image_asset": "assets/images/amenities/telephone.png"},
      {
        "name": "Convenient access to the Venice Boardwalk",
        "image_asset": "assets/images/amenities/walk.png"
      },
      {
        "name": "Non-smoking suites, but allowed on the roof",
        "image_asset": "assets/images/amenities/smoke_free.png"
      },
      {
        "name": "Limited Nearby guest parking for only \$20 per day*",
        "image_asset": "assets/images/amenities/parking-lot.png"
      },
      {
        "name": "Kitchens fully equipped with a stove top, microwave, refrigerator, coffee maker, toaster, dishes, and silverware",
        "image_asset": "assets/images/amenities/kitchen.png"
      },
    ],
    "room_types": [
      {
        "types": "Oceanfront 1-bedroom Suite",
        "price": 170.00,
      },
      {
        "types": "Studio Suite With Partial Ocean View",
        "price": 345.00,
      },
      {
        "types": "1 Bedroom Suite",
        "price": 170.00,
      },
      {
        "types": "Studio Suite",
        "price": 170.00,
      },
      {
        "types": "Junior Studio Suite",
        "price": 207.00,
      },
    ],
    "faq": [
      {
        "question": "Do You Allow Pets?",
        "answer":
        "Yes! We allow up to 2 dogs per room and require a \$150 fee per dog. Service dogs are exempt from the pet fee. Regular damage fees do apply if applicable.",
      },
      {
        "question": "Do You Have Dining on-site at Venice Suites?",
        "answer":
        "We don't offer on-site dining at Venice Suites. However, guests can enjoy great restaurants just steps away from our front door. We encourage you to come to the front desk and ask about recommendations if you're looking for some options.",
      },
      {
        "question": "When Can I Check-in? And When Can I Check-out?",
        "answer":
        "You can check-in at Venice Suites at 3 pm. When you leave, check-out is at 11 am. We may store your luggage for you, and you can also spend some time on our roof deck until we have the suite ready for you if you arrive early.",
      },
      {
        "question": "Does Each of the Units Have a Kitchen?",
        "answer":
        "Guests can enjoy a full kitchens with all the essential appliances in every unit at Venice Suites. This includes 2 burner stoves, a microwave, a refrigerator, and a coffee machine. Plus, you'll find all the cooking utensils you need (glassware, silverware, plates, and pots.",
      },
      {
        "question": "What is the Cancellation Policy?",
        "answer":
        "We have a strict 3-day cancellation policy. Cancellations made more than 3 days prior to arrival will receive a deposit refund. Cancellations within 3 days of arrival will result in a forfeiture of the first night's deposit.",
      },
    ]
  };*/
}
