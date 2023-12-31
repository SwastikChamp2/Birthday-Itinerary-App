import 'package:birthday_itinerary_app/Pages/explore__page.dart';
import 'package:birthday_itinerary_app/Pages/home_page.dart';
import 'package:birthday_itinerary_app/Pages/my_itinerary_page.dart';
import 'package:flutter/material.dart';
import '../Components/general_components.dart';

class ItineraryDetailPage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ItineraryDetailPage> {
  int selectedIndex = 0;
  String coverImageUrl =
      'https://mumbaimirror.indiatimes.com/thumb/msid-79228089,width-1200,height-900,resizemode-4/.jpg';

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
              'https://mumbaimirror.indiatimes.com/thumb/msid-79228089,width-1200,height-900,resizemode-4/.jpg',
              'https://static.toiimg.com/thumb/msid-77028654,width-400,resizemode-4/77028654.jpg',
              'https://www.christiesrealestate.com/blog/wp-content/uploads/2021/09/PUBLIC_PopularCantina_0621_LizClayman_149.jpg',
              'https://media.gqindia.com/wp-content/uploads/2017/12/110.jpg',
              'https://npr.brightspotcdn.com/legacy/sites/khpr/files/201905/f_top.jpg',
            ],
            onTapRoutes: [
              () {
                changeCoverImage(
                    'https://mumbaimirror.indiatimes.com/thumb/msid-79228089,width-1200,height-900,resizemode-4/.jpg');
              },
              () {
                changeCoverImage(
                    'https://static.toiimg.com/thumb/msid-77028654,width-400,resizemode-4/77028654.jpg');
              },
              () {
                changeCoverImage(
                    'https://www.christiesrealestate.com/blog/wp-content/uploads/2021/09/PUBLIC_PopularCantina_0621_LizClayman_149.jpg');
              },
              () {
                changeCoverImage(
                    'https://media.gqindia.com/wp-content/uploads/2017/12/110.jpg');
              },
              () {
                changeCoverImage(
                    'https://npr.brightspotcdn.com/legacy/sites/khpr/files/201905/f_top.jpg');
              },
            ],
          ),

          CustomTitleTextforItineraryDetail(
            Title: 'Culinary Delights Fiesta',
            PricePerPerson: 45,
            Location: 'Napa Valley, California',
            Rating: 4.4,
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
                  'Embark on a luxurious culinary journey. Create gourmet masterpieces, savor fine flavors, and delight in interactive dining.',
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
              Container(
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
              const SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Event Details',
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
              EventDetails(),
              SizedBox(
                height: 20,
              ),
              Center(
                child: BlueButton(buttonTitle: 'Book a Room'),
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

class EventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomEventDetailCard(
            individualEventTitle: 'Welcome Breakfast',
            individualEventDate: '9:00 AM - 11:00 AM',
            individualEventLocation: 'The Garden Terrace Cafe',
            individualEventDescription:
                'Indulge in a gourmet morning spread in the Garden Terrace.',
            isIndividualEventActive: false,
          ),
          CustomEventDetailCard(
            individualEventTitle: 'Welcome Lunch',
            individualEventDate: '12:00 PM - 01:30 PM',
            individualEventLocation: 'The Garden Terrace Restuarant',
            individualEventDescription:
                'Indulge in Lunch at the Garden Terrace.',
            isIndividualEventActive: false,
          ),
          CustomEventDetailCard(
            individualEventTitle: 'Gourmet Pizza Lunch',
            individualEventDate: '12:00 PM - 01:30 PM',
            individualEventLocation: 'The Artisan Kitchen',
            isIndividualEventActive: false,
            individualEventDescription:
                'Savour personalized pizzas in the vibrant Artisan Kitchen.',
          ),
          CustomEventDetailCard(
            individualEventTitle: 'Cupcake Decorating Extravaganza',
            individualEventDate: '2:00 PM - 3:00 PM',
            individualEventLocation: 'The Dessert Haven',
            isIndividualEventActive: false,
            individualEventDescription:
                'Get creative with cupcake decorations in the sunlit conservatory of Desert Heaven',
          ),
          CustomEventDetailCard(
            individualEventTitle: 'Taste-Testing and Foodie Games',
            individualEventDate: '3:30 PM - 6:30 PM',
            individualEventLocation: 'The Tasting Lounge Bar and Cafe',
            isIndividualEventActive: false,
            individualEventDescription:
                'Engage in fun-filled food-related games in the cozy lounge area of Harmonyville Estate.',
          ),
          CustomEventDetailCard(
            individualEventTitle: 'Grand Dinner Feast',
            individualEventDate: '7:00 PM - 9:30 PM',
            individualEventLocation: 'The Grand Indian Hotel',
            isIndividualEventActive: false,
            individualEventDescription:
                'Conclude the day with an exquisite dinner in the grand dining hall',
          ),
        ],
      ),
    );
  }
}
