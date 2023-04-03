import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_today/screens/booking_screen.dart';
import 'package:hotel_today/widget/amenities_widget.dart';

import '../utils/constants.dart';
import '../widget/appBar.dart';

class VeniceHotelDetails extends StatefulWidget {

  final Map<String, dynamic> details;

  const VeniceHotelDetails({Key? key, required this.details}) : super(key: key);

  @override
  State<VeniceHotelDetails> createState() => _VeniceHotelDetailsState();
}

class _VeniceHotelDetailsState extends State<VeniceHotelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.sp),
          child: AppBarWidget(title: 'Venice Hotel')),
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
                    height: 10,
                  ),
                  Text(
                    'Features',
                    style: TextStyle(fontSize: 30.sp, color: appBarTitleColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Features
                  GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.details['features'].length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        childAspectRatio: 4,
                        mainAxisExtent: 180.sp
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 30.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${widget.details['features'][index]['title']}',
                              style: TextStyle(
                                fontSize: 26.sp,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              SizedBox(
                                  height: 10.sp
                              ),
                              Text('${widget.details['features'][index]['description']}',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    height: 1.8
                                    //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //RoomTypes and FAQ
                  GridView(
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
                                itemCount: widget.details['room_types'].length,
                                itemBuilder: (BuildContext context, index) {
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
                                      Divider(
                                        thickness: 1,
                                      )
                                    ],
                                  );
                                }),
                            SizedBox(height: 10.sp),
                            Text(
                              'Contact Details',
                              style: TextStyle(fontSize: 30.sp, color: appBarTitleColor),
                            ),
                            GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                //crossAxisSpacing: 15.0,
                                //mainAxisSpacing: 10.0
                                childAspectRatio: 4
                              ),
                              itemCount: widget.details['contact_details'].length,
                              itemBuilder: (BuildContext context, index) {
                                return Row(
                                  children: [
                                    Image.asset(widget.details['contact_details'][index]['image'],
                                        width: 30.sp
                                    ),
                                    SizedBox(
                                      width: 10.sp,
                                    ),
                                    Text('${widget.details['contact_details'][index]['details']}',
                                      style: TextStyle(
                                          fontSize: 18.sp
                                      ),
                                    )
                                  ],
                                );
                              },
                            ),

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
                              itemCount: widget.details['faq'].length,
                              itemBuilder: (BuildContext context, index) {
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
                  ),
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

  // Map<String, dynamic> details = {
  //   "name": "Venice Hotel",
  //   "image_asset": "assets/images/venice_hotel_1.jpeg",
  //   "address": "5 Westminster Ave, Venice, CA 90291",
  //   "description":
  //       "Discover spaces as unique as the Venice story inside our one-of-a-kind rooms, suites, and spacious bungalows, each offering stunning Pacific Ocean views, open floor plans, walk-in showers, and one-of-a-kind details inspired by Venice’s history — including the beachy, breezy bohemian; the moody, soulful artist; and the Dogtown skater, an ode to skate and DIY culture.",
  //   "price": "575",
  //   "amenities": [
  //     {
  //       "name": "Ocean Front",
  //       "image_asset": "assets/images/amenities/ocean_front.png"
  //     },
  //     {
  //       "name": "Living Space",
  //       "image_asset": "assets/images/amenities/living_space.png"
  //     },
  //     {"name": "Wet Bar", "image_asset": "assets/images/amenities/wet_bar.png"},
  //     {
  //       "name": "Sofa Pullout",
  //       "image_asset": "assets/images/amenities/sofa_pullout.png"
  //     },
  //     {
  //       "name": "Bluetooth Speaker",
  //       "image_asset": "assets/images/amenities/bluetooth_speaker.png"
  //     },
  //     {
  //       "name": "Aesop Bath Amenities",
  //       "image_asset": "assets/images/amenities/aesop_bath_amenities.png"
  //     },
  //     {"name": "Robes", "image_asset": "assets/images/amenities/robes.png"},
  //     {"name": "Wifi", "image_asset": "assets/images/amenities/wifi.png"},
  //     {
  //       "name": "Television",
  //       "image_asset": "assets/images/amenities/television.png"
  //     },
  //     {
  //       "name": "Mini Fridge",
  //       "image_asset": "assets/images/amenities/mini_fridge.png"
  //     },
  //     {
  //       "name": "Fabric Steamer",
  //       "image_asset": "assets/images/amenities/fabric-steamer.png"
  //     },
  //     {
  //       "name": "Curated Snacks",
  //       "image_asset": "assets/images/amenities/curated_snacks.png"
  //     },
  //     {
  //       "name": "In-Room Safe",
  //       "image_asset": "assets/images/amenities/in-room-safe.png"
  //     },
  //     {
  //       "name": "Hairdryer",
  //       "image_asset": "assets/images/amenities/hairdryer.png"
  //     },
  //     {
  //       "name": "Per Friendly",
  //       "image_asset": "assets/images/amenities/pet_friendly.png"
  //     },
  //     {
  //       "name": "Smoke-Free",
  //       "image_asset": "assets/images/amenities/smoke_free.png"
  //     },
  //   ],
  //   "features": [
  //     {
  //       "title": "The Bath",
  //       "description":
  //           "Refresh in our coastal-inspired baths with oversized walk in showers, Aesop bath amenities, cozy robes, and cotton knit towels."
  //     },
  //     {
  //       "title": "The Bed",
  //       "description":
  //           "A good night’s sleep awaits: Our King or Queen-sized beds have been made with only the finest imported linens, custom down comforters, and oversized hypo-allergenic down pillows."
  //     }
  //   ],
  //   "room_types": [
  //     {
  //       "types": "Partial Ocean View",
  //       "price": 315.00,
  //     },
  //     {
  //       "types": "Ocean View",
  //       "price": 345.00,
  //     },
  //     {
  //       "types": "Ocean View Double",
  //       "price": 345.00,
  //     },
  //     {
  //       "types": "Ocean Front XL",
  //       "price": 395.00,
  //     },
  //     {
  //       "types": "Ocean View Two Bedroom Studio",
  //       "price": 595.00,
  //     },
  //     {
  //       "types": "Ocean Front One Bedroom Suite",
  //       "price": 595.00,
  //     },
  //     {
  //       "types": "Ocean View Penthouse Bungalow",
  //       "price": 545.00,
  //     },
  //     {
  //       "types": "Ocean Front Penthouse",
  //       "price": 645.00,
  //     },
  //   ],
  //   "contact_details": [
  //     {
  //       "image": "assets/images/mobile.png",
  //       "details": "(310) 912-6488",
  //     },
  //     {
  //       "image": "assets/images/email.png",
  //       "details": "hello@veniceVhotel.com",
  //     }
  //   ],
  //   "faq": [
  //     {
  //       "question": "Cancellation Policy",
  //       "answer":
  //           "We will allow the reservation to be changed or cancelled at no charge up to 48 hours before the scheduled arrival date.",
  //     },
  //     {
  //       "question": "Guaranteed Reservation",
  //       "answer":
  //           "Reservations must be guaranteed by a major credit card when you book. Blackout dates are subject to their own rules. For security purposes, please provide a valid government or state-issued photo ID at check-in. To cover incidentals, \$100/day will be authorized on your credit card.",
  //     },
  //     {
  //       "question": "Early Arrival / Late Departure / Early Departure",
  //       "answer":
  //           "Check in time is after 3:00 pm and check out time is 12:00 pm. Arriving early or need that extra hour of sleep? We’ll do our very best to accommodate you (based on availability) – just let us know in advance. If we can’t, we’ll gladly stow your luggage safely and securely, until you’re ready to move on. Late check out fees may apply. If you check out or leave before your scheduled departure date, there is a fee of one night’s room and tax.",
  //     },
  //   ]
  // };
}
