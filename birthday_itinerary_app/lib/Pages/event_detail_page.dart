import 'package:birthday_itinerary_app/Pages/map_page.dart';
import 'package:flutter/material.dart';
import '../Components/general_components.dart';

class EventDetailPage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<EventDetailPage> {
  String coverImageUrl =
      'https://www.aspensnowmass.com/-/media/aspen-snowmass/images/hero/hero-image/winter/2022-23/tickets-and-passes-hero-image-082522.jpg?mw=1506&mh=930&hash=190C09B75EC96992C1ED1AB16C3477FB';

  void changeCoverImage(String newImageUrl) {
    setState(() {
      coverImageUrl = newImageUrl;
    });
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
              'https://www.aspensnowmass.com/-/media/aspen-snowmass/images/hero/hero-image/winter/2022-23/tickets-and-passes-hero-image-082522.jpg?mw=1506&mh=930&hash=190C09B75EC96992C1ED1AB16C3477FB',
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
            Title: 'Mountain Top SKiing ',
            PricePerPerson: 200,
            Location: 'Aspen, Colorado',
            Rating: 4.5,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ExplorePageContent(),
            ),
          ),
          FixedBottomBar(),
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
                  '''Aspen, Colorado is a world-renowned ski destination, and The Maroon Bells Ski Resort is one of its best. With over 3,000 acres of skiable terrain, stunning scenery, and a vibrant après-ski scene, The Maroon Bells Ski Resort has something to offer everyone.

The resort offers a variety of terrain for all skill levels, from beginner to advanced. There are also a number of terrain parks and gladed areas for skiers and snowboarders who are looking for a challenge.

One of the things that makes The Maroon Bells Ski Resort so special is its stunning scenery. The resort is located in the White River National Forest, and it offers panoramic views of the surrounding mountains, including the Maroon Bells, two of the most iconic peaks in the Rocky Mountains.

Another thing that makes The Maroon Bells Ski Resort so popular is its vibrant après-ski scene. The resort has a number of bars and restaurants''',
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
                child: BlueButton(buttonTitle: 'Book Event'),
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
            individualEventTitle: 'Arrival and Warm-Up',
            individualEventDate: '8:00 AM - 10:00 AM',
            individualEventLocation: 'The Maroon Bells Ski Resort Reception',
            individualEventDescription:
                'Arrive at Maroon Bells Ski Resort, purchase lift tickets, warm up with a few easy runs, and begin skiing easy slopes ',
            isIndividualEventActive: false,
          ),
          CustomEventDetailCard(
            individualEventTitle: 'Morning Skiing',
            individualEventDate: '10:00 AM - 1:00 PM',
            individualEventLocation: 'The Maroon Bells Ski Resort Area No.3',
            individualEventDescription:
                'Take a break for lunch, continue skiing on the intermediate and advanced slopes, and take another break for lunch or a snack.',
            isIndividualEventActive: false,
          ),
          CustomEventDetailCard(
            individualEventTitle: 'Afternoon Skiing',
            individualEventDate: '1:00 PM - 4:00 PM',
            individualEventLocation: 'The Maroon Bells Ski Resort Area No.12',
            isIndividualEventActive: false,
            individualEventDescription:
                'Ski some of the more challenging slopes, such as Spar Gulch and The Face of Bell, take a final break before heading down the mountain, and ski the last few runs of the day.',
          ),
          CustomEventDetailCard(
            individualEventTitle: 'Post-Skiing Lunch and Eating',
            individualEventDate: '4:00 PM - 7:00 PM',
            individualEventLocation: 'The Maroon Bells Ski Resort Restuarant',
            isIndividualEventActive: false,
            individualEventDescription:
                'Enjoy a post-ski drink or meal at our finest restuarant meals specially curated for you.',
          ),
        ],
      ),
    );
  }
}
