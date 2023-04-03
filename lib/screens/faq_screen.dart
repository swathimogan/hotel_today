import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {

  List<Item> items = [
    Item(
        1,
        "How do I book a hotel room",
        "Simple click on the hotel you want to stay at and click Book Now then fill in your details and check out.",
        false),
    Item(
        2,
        "What happens after I book a room",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        false),
    Item(
        3,
        "How do I want to cancel my booking",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        false),
    Item(
        4,
        "Do you offer couples massage at the hotel spa?",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        false),
    Item(
        5,
        "Is the hotel dog-friendly?",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        false),
    Item(
        6,
        "What are the best places to eat in Los Gatos?",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        false),
    Item(
        7,
        "What is the hotel's pet policy?",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        false),
    Item(
        8,
        "Do you have transportation to and from the airport?",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        false),
  ];



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (BuildContext context, index) {
          return Column(
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  iconTheme: IconThemeData(
                      color: Colors.black,
                      size: 40.sp
                  ),
                  unselectedWidgetColor: Colors.black, // here for close state
                  colorScheme: ColorScheme.light(
                    primary: Colors.white,
                  ), // here for open state in replacement of deprecated accentColor
                  dividerColor: Colors.transparent, // if you want to remove the border
                ),
                child: ExpansionTile(
                  iconColor: Colors.black,
                  title: Text('${items[index].title}',
                  style: TextStyle(
                    fontSize: 23.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  //subtitle: Text('Trailing expansion arrow icon'),
                  children: <Widget>[
                    ListTile(title: Text('${items[index].description}',
                    style: TextStyle(
                      height: 1.8,
                      fontSize: 18.sp
                    ),
                    )),
                  ],
                ),
              ),
              Divider(thickness: 1, color: Color(0xffE8E8E8))
            ],
          );
        }),
        /*ExpansionPanelList(
          expandedHeaderPadding: EdgeInsets.symmetric(vertical:0),
          //dividerColor: Colors.red,
          elevation: 0,
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              items[panelIndex].isExpanded = !isExpanded;
            });
          },
          animationDuration: const Duration(milliseconds: 500),
          children: items
              .map(
                (item) => ExpansionPanel(
              canTapOnHeader: true,
              // backgroundColor: item.isExpanded == true
              //     ? Colors.white
              //     : Colors.white,
              headerBuilder: (_, isExpanded) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 23.sp,
                        // fontSize: Dimensions()
                        //     .getResponsiveSize(context, 17),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.description,
                    style: TextStyle(
                      fontSize: 18.sp,
                        // fontSize: Dimensions()
                        //     .getResponsiveSize(
                        //     context, 15),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                ],
              ),
              isExpanded: item.isExpanded,
            ),
          )
              .toList(),
        ),*/
      ],
    );
  }
}

class Item {
  int id;
  String title;
  String description;
  bool isExpanded;

  Item(this.id, this.title, this.description, this.isExpanded);
}

