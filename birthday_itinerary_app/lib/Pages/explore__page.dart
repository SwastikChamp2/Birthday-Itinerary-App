import 'package:birthday_itinerary_app/Components/birthday_itinerary_card_homepage.dart';
import 'package:birthday_itinerary_app/Components/general_components.dart';
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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Callback function to change tabTitle
  void changeTabTitle(String newTabTitle) {
    setState(() {
      tabTitle = newTabTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 251, 255, 1),
      body: Column(
        children: [
          FixedTopBarforHome(),
          SearchField(),
          const SizedBox(
            height: 20,
          ),
          TabBar(
            indicatorColor:
                Color.fromRGBO(255, 255, 255, 0), //tab indicator is hidden
            controller: _tabController,
            tabs: [
              Tab(
                child: ExplorePageButton(
                  text: 'Restuarant',
                  style: restuarantTabStyle,
                  onPressed: () {
                    setState(() {
                      restuarantTabStyle = 'Gradient';
                      hotelTabStyle = 'Grey';
                      eventTabStyle = 'Grey';
                    });
                    changeTabTitle('Restaurant'); // Update tabTitle
                  },
                ),
              ),
              Tab(
                child: ExplorePageButton(
                  text: 'Hotel',
                  style: hotelTabStyle,
                  onPressed: () {
                    setState(() {
                      restuarantTabStyle = 'Grey';
                      hotelTabStyle = 'Gradient';
                      eventTabStyle = 'Grey';
                    });
                    changeTabTitle('Hotels'); // Update tabTitle
                  },
                ),
              ),
              Tab(
                child: ExplorePageButton(
                  text: 'Event',
                  style: eventTabStyle,
                  onPressed: () {
                    setState(() {
                      restuarantTabStyle = 'Grey';
                      hotelTabStyle = 'Grey';
                      eventTabStyle = 'Gradient';
                    });
                    changeTabTitle('Events'); // Update tabTitle
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ExplorePageContent(tabTitle: tabTitle),
                ExplorePageContent(tabTitle: tabTitle),
                ExplorePageContent(tabTitle: tabTitle),
              ],
            ),
          ),
          FixedBottomBar(),
        ],
      ),
    );
  }
}

class FixedTopBarforHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109,
      padding: const EdgeInsets.only(
        top: 48,
        left: 22.50,
        right: 22.50, // Adjusted right padding
        bottom: 20,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0xFFF1FAFF)),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(width: 20),
          Expanded(
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
        ],
      ),
    );
  }
}

class ExplorePageContent extends StatelessWidget {
  final String tabTitle;

  ExplorePageContent({required this.tabTitle});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 17,
      top: 101,
      child: Column(
        children: [
          Container(
            // Existing content for the Restaurant tab
            child: Column(
              children: [
                if (tabTitle == 'Restaurant') ...[
                  RestuarantTabSection(),
                ],
                if (tabTitle == 'Hotels') ...[
                  Text(
                    'Hotel',
                    style: TextStyle(
                      color: Color(0xFF5E6980),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
                if (tabTitle == 'Events') ...[
                  Text(
                    'Events',
                    style: TextStyle(
                      color: Color(0xFF5E6980),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
