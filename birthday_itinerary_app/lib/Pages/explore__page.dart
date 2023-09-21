import 'package:birthday_itinerary_app/Components/birthday_itinerary_card_homepage.dart';
import 'package:birthday_itinerary_app/Components/general_components.dart';
import 'package:birthday_itinerary_app/Pages/events_tab_page.dart';
import 'package:birthday_itinerary_app/Pages/home_page.dart';
import 'package:birthday_itinerary_app/Pages/hotels_tab_page.dart';
import 'package:birthday_itinerary_app/Pages/my_itinerary_page.dart';
import 'package:birthday_itinerary_app/Pages/restuarant_page_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import '../Authentication/google_signin.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String restuarantTabStyle = 'Gradient';
  String hotelTabStyle = 'Grey';
  String eventTabStyle = 'Grey';
  String tabTitle = 'Restaurant'; // Initialize tabTitle
  int _selectedButtonIndex = 0;
  int selectedIndex = 1;

  void _handleTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    // Add navigation logic here
    // For example:
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ExplorePage()),
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyItineraryPage()),
      );
    }
  }

  void _selectButton(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 251, 255, 1),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Explore',
                      style: TextStyle(
                        color: Color(0xFF5E6980),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                SearchField(),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ExplorePageButton(
                      text: 'Restuarant',
                      style: restuarantTabStyle,
                      onPressed: () {
                        setState(() {
                          _selectButton(0);
                          restuarantTabStyle = 'Gradient';
                          hotelTabStyle = 'Grey';
                          eventTabStyle = 'Grey';
                        });
                      },
                    ),
                    ExplorePageButton(
                      text: 'Hotels',
                      style: hotelTabStyle,
                      onPressed: () {
                        setState(() {
                          _selectButton(1);
                          restuarantTabStyle = 'Grey';
                          hotelTabStyle = 'Gradient';
                          eventTabStyle = 'Grey';
                        });
                      },
                    ),
                    ExplorePageButton(
                      text: 'Events',
                      style: eventTabStyle,
                      onPressed: () {
                        setState(() {
                          _selectButton(2);
                          restuarantTabStyle = 'Grey';
                          hotelTabStyle = 'Grey';
                          eventTabStyle = 'Gradient';
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: _selectedButtonIndex == 0
                  ? Widget1()
                  : _selectedButtonIndex == 1
                      ? Widget2()
                      : Widget3(),
            ),
          ),
          FixedBottomBar(
              selectedIndex: selectedIndex, onTabTapped: _handleTabTapped),
        ],
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RestuarantTabSection();
  }
}

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HotelTabSection();
  }
}

class Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EventTabSection();
  }
}
