import 'package:birthday_itinerary_app/Components/birthday_itinerary_card_homepage.dart';
import 'package:birthday_itinerary_app/Components/general_components.dart';
import 'package:birthday_itinerary_app/Pages/QR_scanner_page.dart';
import 'package:birthday_itinerary_app/Pages/event_walkthrough_page.dart';
import 'package:birthday_itinerary_app/Pages/explore__page.dart';
import 'package:birthday_itinerary_app/Pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import '../Authentication/google_signin.dart';

class MyItineraryPage extends StatefulWidget {
  const MyItineraryPage({super.key});

  @override
  State<MyItineraryPage> createState() => _MyItineraryPageState();
}

class _MyItineraryPageState extends State<MyItineraryPage> {
  int selectedIndex = 2;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 251, 255, 1),
      body: Column(
        children: [
          FixedTopBarforHome(),
          Expanded(
            child: SingleChildScrollView(
              child: MyItineraryPageContent(),
            ),
          ),
          FixedBottomBar(
              selectedIndex: selectedIndex, onTabTapped: _handleTabTapped),
        ],
      ),
    );
  }
}

class FixedTopBarforHome extends StatelessWidget {
  const FixedTopBarforHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109,
      padding: const EdgeInsets.only(
        top: 48,
        left: 22.50,
        right: 22.50, // Adjusted right padding
        bottom: 31,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0xFFF1FAFF)),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // IconButton(
          //   onPressed: () {
          //     // Handle button click (e.g., navigate back)
          //   },
          //   icon: Icon(
          //     Icons.arrow_back,
          //     color: Color(0xFF5E6980),
          //     size: 24,
          //   ),
          // ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              'My Itinerary',
              style: TextStyle(
                color: Color(0xFF5E6980),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyItineraryPageContent extends StatelessWidget {
  MyItineraryPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 341,
      // height: 1151,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          MyItineraryCard(
            title: 'Culinary Delight',
            time: '8:00 AM - 8:00 PM ',
            location: 'Napa Valley, California',
            date: '24/09/23',
            onTapRoute: EventWalkthroughPage(),
            imageUrl:
                'https://mumbaimirror.indiatimes.com/thumb/msid-79228089,width-1200,height-900,resizemode-4/.jpg',
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QRScannerScreen()),
                        );
                      },
                      icon: Icon(
                        Icons.qr_code_scanner,
                        color: Colors.grey,
                        size: 100,
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Scan to join',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
