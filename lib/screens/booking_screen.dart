import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_today/screens/thank_you_screen.dart';
import 'package:hotel_today/utils/constants.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../widget/appBar.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  /*final DateRangePickerController _controller = DateRangePickerController();
  final List<String> views = <String>['Month', 'Year', 'Decade', 'Century'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton<String>(
          icon: Icon(Icons.calendar_today),
          itemBuilder: (BuildContext context) => views.map((String choice) {
            return PopupMenuItem<String>(
              value: choice,
              child: Text(choice),
            );
          }).toList(),
          onSelected: (String value) {
            if (value == 'Month') {
              _controller.view = DateRangePickerView.month;
            } else if (value == 'Year') {
              _controller.view = DateRangePickerView.year;
            } else if (value == 'Decade') {
              _controller.view = DateRangePickerView.decade;
            } else if (value == 'Century') {
              _controller.view = DateRangePickerView.century;
            }
          },
        ),
      ),
      body: Card(
          margin: const EdgeInsets.fromLTRB(40, 150, 40, 150),
          child: SfDateRangePicker(
            controller: _controller,
            selectionShape: DateRangePickerSelectionShape.circle,
            selectionMode: DateRangePickerSelectionMode.range,
            allowViewNavigation: false,
            enableMultiView: true,
            monthViewSettings: DateRangePickerMonthViewSettings(
                dayFormat: 'EE',
                firstDayOfWeek: 7,
                viewHeaderHeight: 48,
                viewHeaderStyle:  DateRangePickerViewHeaderStyle(
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23.sp
                    )
                )
            ),
            monthCellStyle:  DateRangePickerMonthCellStyle(
              specialDatesDecoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: const Color(0xFF2B732F),
                      width: 1),
                  shape: BoxShape.circle),
              /*todayTextStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 23.sp
                          ),
                          todayCellDecoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                              color: appBarTitleColor,
                              //shape: BoxShape.rectangle
                          ),*/
            ),
            headerStyle: DateRangePickerHeaderStyle(
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                    color: Color(0xff3B97E7),
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold
                )
            ),
          )),
    );
  }*/


  String? checkIn;
  String? checkOut;

  var categories = [
    "Suite / Executive Suite",
    "Mini Suite or Junior Suite",
    "President Suite | Presidential Suite",
    "Murphy Room",
    "Connecting rooms",
    "Hollywood Twin Room"
  ];

  String? _category;

  String? dropdownValue;

  DateTime? _startDate, _endDate;
  late DateRangePickerController _datePickerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _datePickerController = DateRangePickerController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.sp),
          child: AppBarWidget(title: 'HOTEL TODAY')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 10.0,
                  //childAspectRatio: 15/10
                  mainAxisExtent: 70.sp),
              children: [
                Container(
                    color: appBarTitleColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Check-in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.sp
                        ),
                        ),
                        (checkIn!=null)?Text('  ${checkIn}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23.sp
                          ),
                        ):Container(),
                      ],
                    )),
                Container(
                    color: appBarTitleColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Check-out',
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 23.sp
                          ),
                        ),
                        (checkOut!=null)?Text('  ${checkOut}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23.sp
                          ),
                        ):Container(),
                      ],
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.sp, right: 20, left: 20),
              child: Column(
                children: [
                  GridView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20.0,
                        //mainAxisSpacing: 10.0,
                        childAspectRatio: 1,
                        mainAxisExtent: 80.sp),
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'First Name',
                            contentPadding: EdgeInsets.symmetric(vertical:0),
                            labelStyle:
                                TextStyle(fontSize: 20.sp, color: Color(0xff818181))),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Last Name',
                            contentPadding: EdgeInsets.symmetric(vertical:0),
                            labelStyle:
                                TextStyle(fontSize: 20.sp, color: Color(0xff818181))),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Email',
                            contentPadding: EdgeInsets.symmetric(vertical:0),
                            labelStyle:
                                TextStyle(fontSize: 20.sp, color: Color(0xff818181))),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical:0),
                            labelText: 'Phone',
                            labelStyle:
                                TextStyle(fontSize: 20.sp, color: Color(0xff818181))),
                      ),
                      Container(
                        color: Colors.white,
                        child: DropdownButtonFormField(
                          items: categories.map((String category) {
                            return new DropdownMenuItem(
                                value: category,
                                child: Row(
                                  children: <Widget>[
                                    Text(category),
                                  ],
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            // do other stuff with _category
                            setState(() => _category = newValue);
                          },
                          icon: Icon(Icons.keyboard_arrow_down_outlined,
                          color: Color(0xff818181),
                            size: 30,
                          ),
                          value: _category,
                          decoration: InputDecoration(
                            hoverColor: Colors.transparent,
                              contentPadding: EdgeInsets.symmetric(vertical:0),
                              labelText: 'Select Room Type',
                              labelStyle:
                              TextStyle(fontSize: 20.sp, color: Color(0xff818181))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Row(
                    children: [
                      Text('Check-in',
                      style: TextStyle(
                        fontSize: 23.sp,
                        color: appBarTitleColor,
                        fontFamily: 'AvantGarde Bk BT',
                       // fontWeight: FontWeight.bold
                      ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      Container(
                        height: 3,
                        width: 30,
                        color: appBarTitleColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Check-out Date',
                        style: TextStyle(
                            fontFamily: 'AvantGarde Bk BT',
                            fontSize: 23.sp,
                            color: appBarTitleColor,
                          //fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 400.sp,
              // color: Colors.red,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  //borderRadius: BorderRadius.all(Radius.circular(5)),
                  // boxShadow:  [
                  //   BoxShadow(
                  //       color: ColorsUtils.colorShadow,
                  //       spreadRadius: 24,
                  //       blurRadius: 24,
                  //       offset: Offset.zero
                  //   ),
                  //   BoxShadow(
                  //       color: ColorsUtils.colorShadowBottom,
                  //       spreadRadius: 2,
                  //       blurRadius: 2,
                  //       offset: Offset.zero
                  //   )
                  // ]
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                /*Padding(
          padding: const EdgeInsets.all(8),
          child: _buildTopView(context)
        ),
        const Divider(color: ColorsUtils.colorDivider, height: 1),*/
                Expanded(
                  child: Padding(
                  padding: EdgeInsets.only(top:16.sp),
                  child: SfDateRangePicker(
                controller: _datePickerController,
                onSelectionChanged: _onSelectionChanged,
                selectionShape: DateRangePickerSelectionShape.circle,
                selectionMode: DateRangePickerSelectionMode.range,
                allowViewNavigation: false,
                enableMultiView: true,
                monthViewSettings: DateRangePickerMonthViewSettings(
                    dayFormat: 'EE',
                    firstDayOfWeek: 7,
                    viewHeaderHeight: 48.sp,
                    viewHeaderStyle:  DateRangePickerViewHeaderStyle(
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 23.sp
                        )
                    )
                ),
                monthCellStyle:  DateRangePickerMonthCellStyle(
                  specialDatesDecoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: const Color(0xFF2B732F),
                          width: 1),
                      shape: BoxShape.circle),
                  /*todayTextStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 23.sp
                          ),
                          todayCellDecoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                              color: appBarTitleColor,
                              //shape: BoxShape.rectangle
                          ),*/
                ),
                headerStyle: DateRangePickerHeaderStyle(
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                        color: Color(0xff3B97E7),
                        fontFamily: 'AvantGarde Bk BT',
                        fontSize: 30.sp,
                       // fontWeight: FontWeight.bold
                    )
                ),
              ),
            )),
                //const Divider(color: ColorsUtils.colorDivider, height: 1),
                //_buildBottomViewTablet(context),
              ]),
            ),
            SizedBox(height: 50.sp,),
            Container(
                width: double.infinity,
                height: 80.sp,
                color: appBarTitleColor,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThankYouScreen()),
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
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    final pickerDateRange = args.value;
    //log('_MultipleViewDateRangePickerState::_onSelectionChanged():pickerDateRange: $pickerDateRange');
    if (pickerDateRange is PickerDateRange) {
      _startDate = args.value.startDate;
      _endDate = args.value.endDate;
      //_updateDateTextInput();

      if (mounted) {
        setState(() {
          if(_startDate!=null){
            checkIn = DateFormat.MMMEd().format(_startDate!);
          }

          if(_endDate!=null){
            checkOut = DateFormat.MMMEd().format(_endDate!);
          }

          // print('${DateFormat.MMMEd().format(_startDate!)}');
          // print();
          // _dateRangeTypeSelected = null;
        });
      }
    }
  }
}
