
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_today/screens/venice_hotel_details.dart';
import 'package:hotel_today/screens/venice_suite_details.dart';
import 'package:hotel_today/widget/appBar.dart';

import '../utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.sp),
          child: AppBarWidget(title: 'HOTEL TODAY',isFirstScreen: true,)),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 2,
          itemBuilder: (BuildContext context, index) {
            return GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.0,
                  //mainAxisSpacing: 10.0
                  childAspectRatio: 1.5),
              children: [
                GestureDetector(
                  onTap: (){
                    if(index == 0){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VeniceHotelDetails(details: hotelDetails[index],)),
                      );
                    }else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VeniceSuiteDetails(details: hotelDetails[index],)),
                      );
                    }
                  },
                  child: Image.asset(
                    hotelDetails[index]['image_asset'],
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${hotelDetails[index]['name']}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.sp),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: Colors.black,
                          size: 30.sp,
                        ),
                        Text(
                          hotelDetails[index]['address'],
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      hotelDetails[index]['description'],
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      '\$${hotelDetails[index]['price']}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 40.sp),
                    )
                  ],
                )
              ],
            );
          }),
    );
  }

  List hotelDetails = [
    {
      "name": "Venice Hotel",
      "image_asset": "assets/images/venice_hotel_1.jpeg",
      "address": "5 Westminster Ave, Venice, CA 90291",
      "description":
      "Discover spaces as unique as the Venice story inside our one-of-a-kind rooms, suites, and spacious bungalows, each offering stunning Pacific Ocean views, open floor plans, walk-in showers, and one-of-a-kind details inspired by Venice’s history — including the beachy, breezy bohemian; the moody, soulful artist; and the Dogtown skater, an ode to skate and DIY culture.",
      "price": "575",
      "amenities": [
        {
          "name": "Ocean Front",
          "image_asset": "assets/images/amenities/ocean_front.png"
        },
        {
          "name": "Living Space",
          "image_asset": "assets/images/amenities/living_space.png"
        },
        {
          "name": "Wet Bar",
          "image_asset": "assets/images/amenities/wet_bar.png"
        },
        {
          "name": "Sofa Pullout",
          "image_asset": "assets/images/amenities/sofa_pullout.png"
        },
        {
          "name": "Bluetooth Speaker",
          "image_asset": "assets/images/amenities/bluetooth_speaker.png"
        },
        {
          "name": "Aesop Bath Amenities",
          "image_asset": "assets/images/amenities/aesop_bath_amenities.png"
        },
        {"name": "Robes", "image_asset": "assets/images/amenities/robes.png"},
        {"name": "Wifi", "image_asset": "assets/images/amenities/wifi.png"},
        {
          "name": "Television",
          "image_asset": "assets/images/amenities/television.png"
        },
        {
          "name": "Mini Fridge",
          "image_asset": "assets/images/amenities/mini_fridge.png"
        },
        {
          "name": "Fabric Steamer",
          "image_asset": "assets/images/amenities/fabric-steamer.png"
        },
        {
          "name": "Curated Snacks",
          "image_asset": "assets/images/amenities/curated_snacks.png"
        },
        {
          "name": "In-Room Safe",
          "image_asset": "assets/images/amenities/in-room-safe.png"
        },
        {
          "name": "Hairdryer",
          "image_asset": "assets/images/amenities/hairdryer.png"
        },
        {
          "name": "Per Friendly",
          "image_asset": "assets/images/amenities/pet_friendly.png"
        },
        {
          "name": "Smoke-Free",
          "image_asset": "assets/images/amenities/smoke_free.png"
        },
      ],
      "features": [
        {
          "title": "The Bath",
          "description":
          "Refresh in our coastal-inspired baths with oversized walk in showers, Aesop bath amenities, cozy robes, and cotton knit towels."
        },
        {
          "title": "The Bed",
          "description":
          "A good night’s sleep awaits: Our King or Queen-sized beds have been made with only the finest imported linens, custom down comforters, and oversized hypo-allergenic down pillows."
        }
      ],
      "room_types": [
        {
          "types": "Partial Ocean View",
          "price": 315.00,
        },
        {
          "types": "Ocean View",
          "price": 345.00,
        },
        {
          "types": "Ocean View Double",
          "price": 345.00,
        },
        {
          "types": "Ocean Front XL",
          "price": 395.00,
        },
        {
          "types": "Ocean View Two Bedroom Studio",
          "price": 595.00,
        },
        {
          "types": "Ocean Front One Bedroom Suite",
          "price": 595.00,
        },
        {
          "types": "Ocean View Penthouse Bungalow",
          "price": 545.00,
        },
        {
          "types": "Ocean Front Penthouse",
          "price": 645.00,
        },
      ],
      "contact_details": [
        {
          "image": "assets/images/mobile.png",
          "details": "(310) 912-6488",
        },
        {
          "image": "assets/images/email.png",
          "details": "hello@veniceVhotel.com",
        }
      ],
      "faq": [
        {
          "question": "Cancellation Policy",
          "answer":
          "We will allow the reservation to be changed or cancelled at no charge up to 48 hours before the scheduled arrival date.",
        },
        {
          "question": "Guaranteed Reservation",
          "answer":
          "Reservations must be guaranteed by a major credit card when you book. Blackout dates are subject to their own rules. For security purposes, please provide a valid government or state-issued photo ID at check-in. To cover incidentals, \$100/day will be authorized on your credit card.",
        },
        {
          "question": "Early Arrival / Late Departure / Early Departure",
          "answer":
          "Check in time is after 3:00 pm and check out time is 12:00 pm. Arriving early or need that extra hour of sleep? We’ll do our very best to accommodate you (based on availability) – just let us know in advance. If we can’t, we’ll gladly stow your luggage safely and securely, until you’re ready to move on. Late check out fees may apply. If you check out or leave before your scheduled departure date, there is a fee of one night’s room and tax.",
        },
      ]
    },
    {
      "name": "Venice Suites",
      "image_asset": "assets/images/venice_suite_1.jpeg",
      "address": "417 Ocean Front Walk, Venice, CA 90291",
      "description":
      "The Best Place to Stay on Venice Beach and the Boardwalk!\n\nGet ready to experience the best place to stay on Venice Beach and the Boardwalk! Venice Suites places you right in the action of Venice Beach’s famous sights and bustling skate culture. \n\nEnjoy special savings of 10% off when you book your stay directly with us!",
      "price": "288",
      "amenities": [
        {
          "name": "Premium cable TVs",
          "image_asset": "assets/images/amenities/television.png"
        },
        {
          "name": "Housekeeping every day",
          "image_asset": "assets/images/amenities/cleaner.png"
        },
        {
          "name": "A coin-operated laundry facility",
          "image_asset": "assets/images/amenities/washing-machine.png"
        },
        {
          "name": "Sofa Pullout",
          "image_asset": "assets/images/amenities/sofa_pullout.png"
        },
        {
          "name": "Pet Friendly",
          "image_asset": "assets/images/amenities/pet_friendly.png"
        },
        {
          "name":
          "A picturesque rooftop deck with sweeping ocean views and barbecue",
          "image_asset": "assets/images/amenities/beach.png"
        },
        {
          "name": "Free high-speed Wi-Fi In-room telephone service",
          "image_asset": "assets/images/amenities/wifi.png"
        },
        {
          "name": "Free high-speed Wi-Fi In-room telephone service",
          "image_asset": "assets/images/amenities/telephone.png"
        },
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
          "name":
          "Kitchens fully equipped with a stove top, microwave, refrigerator, coffee maker, toaster, dishes, and silverware",
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
    }
  ];
}
