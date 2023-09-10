import 'package:birthday_itinerary_app/Components/birthday_itinerary_card_homepage.dart';
import 'package:flutter/material.dart';

import '../Components/general_components.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  String coverImageUrl =
      'https://mumbaimirror.indiatimes.com/thumb/msid-79228089,width-1200,height-900,resizemode-4/.jpg';

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
          // Add the Horizontal Scrollable Row
          HorizontalImageRow(changeCoverImage),
          ExplorePageEventTitleText(),
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

class HorizontalImageRow extends StatelessWidget {
  final Function(String) onImageTap;

  HorizontalImageRow(this.onImageTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.88,
      color: Color(0xFFF0F7FF),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          // Use HorizontalImage for each image
          HorizontalImage(
            imageUrl:
                'https://mumbaimirror.indiatimes.com/thumb/msid-79228089,width-1200,height-900,resizemode-4/.jpg',
            onTap: () => onImageTap(
                'https://mumbaimirror.indiatimes.com/thumb/msid-79228089,width-1200,height-900,resizemode-4/.jpg'),
          ),
          HorizontalImage(
            imageUrl:
                'https://media.istockphoto.com/id/1081422898/photo/pan-fried-duck.jpg?s=612x612&w=0&k=20&c=kzlrX7KJivvufQx9mLd-gMiMHR6lC2cgX009k9XO6VA=',
            onTap: () => onImageTap(
                'https://media.istockphoto.com/id/1081422898/photo/pan-fried-duck.jpg?s=612x612&w=0&k=20&c=kzlrX7KJivvufQx9mLd-gMiMHR6lC2cgX009k9XO6VA='),
          ),
          HorizontalImage(
            imageUrl:
                'https://imgmedia.lbb.in/media/2019/08/5d43d83bca10992d055cc50d_1564727355126.jpg',
            onTap: () => onImageTap(
                'https://imgmedia.lbb.in/media/2019/08/5d43d83bca10992d055cc50d_1564727355126.jpg'),
          ),
          HorizontalImage(
            imageUrl:
                'https://fesmag.com/images/stories/2022-02/MS_sunsetroom.jpg',
            onTap: () => onImageTap(
                'https://fesmag.com/images/stories/2022-02/MS_sunsetroom.jpg'),
          ),
          HorizontalImage(
            imageUrl:
                'https://img.freepik.com/premium-photo/delicious-food-fine-dining-restaurant-ultra-realistic-generative-ai_751108-3797.jpg?w=2000',
            onTap: () => onImageTap(
                'https://img.freepik.com/premium-photo/delicious-food-fine-dining-restaurant-ultra-realistic-generative-ai_751108-3797.jpg?w=2000'),
          ),
          // Add more HorizontalImage widgets as needed
        ],
      ),
    );
  }
}

class HorizontalImage extends StatelessWidget {
  final String imageUrl;
  final Function onTap;

  HorizontalImage({
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 60.05,
          height: 55.88,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
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
              BirthdayItineraryCard(
                title: 'Pamper & Paint Retreat',
                price: '\$70',
                rating: '4.6',
                imageUrl:
                    'https://img.etimg.com/thumb/msid-62296874,width-650,height-488,imgsize-221288,,resizemode-75/.jpg',
              ),
              const SizedBox(
                height: 25,
              ),
              EventDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

class ExplorePageEventTitleText extends StatelessWidget {
  const ExplorePageEventTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 16.0, vertical: 16.0), // Adjust padding as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Column 1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Culinary Delight Fiesta',
                style: TextStyle(
                  color: Color(0xFF5E6980),
                  fontSize: 18.57,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                  height: 4.0), // Add some space between the two Text widgets
              Text(
                'Napa Valley, California',
                style: TextStyle(
                  color: Color(0x7F425884),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          // Column 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$45',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF5E6980),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Per person',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0x7F425884),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
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
          IndividualEventDetail(),
        ],
      ),
    );
  }
}

class IndividualEventDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10.0), // Add 10-pixel left padding
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 6.0,
                  color: Color(0xCCC3DEFA),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left:
                      14.0), // Adjust left padding to maintain the same content position
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 273,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Breakfast',
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ), // Add spacing between title and description
                        Container(
                          width: 300,
                          child: Text(
                            'Indulge in a gourmet morning spread in the Garden Terrace.',
                            style: TextStyle(
                              color: Color(0xFF425884),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ), // Add spacing between description and location/time
                        Row(
                          children: [
                            Image.asset(
                              'assets/location pin blue icon.png',
                              width: 16,
                              height: 19,
                            ),
                            SizedBox(
                              width: 8.0,
                            ), // Add spacing between location icon and text
                            Container(
                              width: 208,
                              child: Text(
                                'The Garden Terrace Café',
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height:
                                8.0), // Add spacing between location and time
                        Row(
                          children: [
                            Image.asset(
                              'assets/clock blue icon.png',
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(
                              width: 8.0,
                            ), // Add spacing between clock icon and text
                            Text(
                              '9:00 AM - 11:00 AM',
                              style: TextStyle(
                                color: Color(0xFF757575),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Add spacing between event detail cards
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 4,
          top: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 238, 239, 241),
              border: Border.all(
                color: const Color.fromARGB(255, 18, 124, 232),
                width: 5.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
