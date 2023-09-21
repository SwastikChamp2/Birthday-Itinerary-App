import 'package:birthday_itinerary_app/Pages/explore__page.dart';
import 'package:birthday_itinerary_app/Pages/home_page.dart';
import 'package:birthday_itinerary_app/Pages/map_page.dart';
import 'package:birthday_itinerary_app/Pages/my_itinerary_page.dart';
import 'package:flutter/material.dart';
import '../Components/general_components.dart';

class HotelDetailPage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<HotelDetailPage> {
  int selectedIndex = 1;
  String coverImageUrl =
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/af/0d/38/fairmont-san-francisco.jpg?w=700&h=-1&s=1';

  void changeCoverImage(String newImageUrl) {
    setState(() {
      coverImageUrl = newImageUrl;
    });
  }

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
          // Add the Cover Image
          Stack(
            children: [
              Container(
                width: 375,
                height: 324,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(coverImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 16.0, // Adjust the top offset as needed
                left: 16.0, // Adjust the left offset as needed
                child: Container(
                  width: 50.0, // Diameter of the circle
                  height: 50.0, // Diameter of the circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        Color.fromRGBO(0, 0, 0, 0.5), // Circle background color
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white, // Icon color
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
          // Add the Horizontal Scrollable Row
          HorizontalImageRow(
            imageUrls: [
              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/af/0d/38/fairmont-san-francisco.jpg?w=700&h=-1&s=1',
              'https://media.cntraveler.com/photos/5a67942178741f59690321ec/16:9/w_2560,c_limit/The-Fairmont__2018_Buckingham-Balcony-Suite-Balcony.jpg',
              'https://media.cntraveler.com/photos/5a6794214580d0380a6531dc/16:9/w_2560%2Cc_limit/The-Fairmont__2018_The-Fairmont-San-Francisco---Lobby---1235811.jpg',
              'https://cdn.abcotvs.com/dip/images/5688514_localish-LSH1283-FAIRMONTSUITE-KGO-vid.jpg',
              'https://www.fivestaralliance.com/files/fsa/nodes/2009/10292/10292_0_fairmontsanfrancisco_fsa-g.jpg?dummy=1424395107',
            ],
            onTapRoutes: [
              () {
                changeCoverImage(
                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/af/0d/38/fairmont-san-francisco.jpg?w=700&h=-1&s=1');
              },
              () {
                changeCoverImage(
                    'https://media.cntraveler.com/photos/5a67942178741f59690321ec/16:9/w_2560,c_limit/The-Fairmont__2018_Buckingham-Balcony-Suite-Balcony.jpg');
              },
              () {
                changeCoverImage(
                    'https://media.cntraveler.com/photos/5a6794214580d0380a6531dc/16:9/w_2560%2Cc_limit/The-Fairmont__2018_The-Fairmont-San-Francisco---Lobby---1235811.jpg');
              },
              () {
                changeCoverImage(
                    'https://cdn.abcotvs.com/dip/images/5688514_localish-LSH1283-FAIRMONTSUITE-KGO-vid.jpg');
              },
              () {
                changeCoverImage(
                    'https://www.fivestaralliance.com/files/fsa/nodes/2009/10292/10292_0_fairmontsanfrancisco_fsa-g.jpg?dummy=1424395107');
              },
            ],
          ),

          CustomTitleTextforItineraryDetail(
            Title: 'The Fairmont',
            PricePerPerson: 300,
            Rating: 4.7,
            Location: 'San Francisco, California',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ExplorePageContent(),
            ),
          ),
          FixedBottomBar(
              selectedIndex: selectedIndex, onTabTapped: _handleTabTapped),
        ],
      ),
    );
  }
}

class ExplorePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 17,
      top: 101,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 24,
        ),
        child: Container(
          // width: 341,
          // height: 1151,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              Container(
                width: 331,
                child: Text(
                  '''Fairmont Hotels & Resorts is a luxury hotel chain with over 80 hotels and resorts in over 20 countries around the world. Fairmont hotels are known for their iconic locations, elegant accommodations, world-class amenities, and impeccable service.

Since 1907, Fairmont hotels have been welcoming guests to some of the most iconic destinations in the world, including San Francisco, New York, London, Paris, and Dubai. Fairmont hotels are known for their elegant architecture, luxurious accommodations, and world-class amenities.

From the moment you arrive at a Fairmont hotel, you will be greeted with impeccable service and a warm welcome. Fairmont hotels offer a wide range of amenities to meet the needs of all guests, including award-winning restaurants and bars, state-of-the-art fitness centers and spa facilities, business centers and meeting facilities, concierge services, and more.''',
                  style: TextStyle(
                    color: Color(0xFF425884),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Location',
                  style: TextStyle(
                    color: Color(0xFF151516),
                    fontSize: 18.57,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MapPage()), // Use onTapRoute for navigation
                  );
                },
                child: Container(
                  width: 275.60,
                  height: 208.21,
                  decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.circular(26.52),
                    image: DecorationImage(
                      image: AssetImage('assets/map sample.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Rooms',
                  style: TextStyle(
                    color: Color(0xFF151516),
                    fontSize: 18.57,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  RoomTableItem(
                    room: 'Single Room',
                    description: '1 Medium Beds',
                    price: 80,
                  ),
                  RoomTableItem(
                    room: 'Double Room',
                    description: '2 Medium Beds',
                    price: 120,
                  ),
                  RoomTableItem(
                    room: 'Deluxe Room',
                    description: '1 King Size Bed with 2 sofa',
                    price: 250,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Facilities and Ammenities',
                  style: TextStyle(
                    color: Color(0xFF151516),
                    fontSize: 18.57,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ChipList(
                items: [
                  'Spa',
                  'Swimming Pool',
                  'Indoor Sports',
                  'Pet Friendly',
                  'Butler Service',
                  'Golf Course',
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: BlueButton(buttonTitle: 'Book a Seat'),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
