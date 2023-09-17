import 'package:flutter/material.dart';
import '../Components/general_components.dart';

class RestuarantDetailPage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<RestuarantDetailPage> {
  String coverImageUrl =
      'https://media.cntraveler.com/photos/5b22cabaf0cc9956e5adca3c/16:9/w_2560,c_limit/Bar-Raval_36361674480_70a3ef47c9_o.jpg';

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
          HorizontalImageRow(changeCoverImage),
          CustomTitleTextforRestuarantDetail(
            restuarantName: 'Bar Raval Restaurant',
            priceRating: 4,
            restuarantrating: 5.5,
            restuarantLocation: 'New York City, New York',
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
                  '''Bar Raval Restaurant is a sophisticated and elegant bar restaurant that offers a unique dining experience. Located in the heart of New York, our restaurant is the perfect place to enjoy a delicious meal and a refreshing cocktail in a stylish and upscale setting.

Our menu features a variety of modern American dishes, all prepared with the freshest ingredients and finest cuts of meat and seafood. We also offer a wide selection of wines, beers, and cocktails to complement your meal.

Our bar is staffed by experienced and knowledgeable bartenders who can create any drink you desire, from classic cocktails to innovative new creations. We also have a wide selection of craft beers and artisanal wines on tap''',
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
                  'Timings',
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
                  RestuarantTimingTable(
                      day: 'Monday', time: '9:00 AM - 12:00 PM'),
                  RestuarantTimingTable(
                      day: 'Tuesday', time: '10:30 AM - 1:30 PM'),
                  RestuarantTimingTable(
                      day: 'Wednesday', time: '11:15 AM - 2:15 PM'),
                  RestuarantTimingTable(
                      day: 'Thursday', time: '8:45 AM - 11:45 AM'),
                  RestuarantTimingTable(
                      day: 'Friday', time: '1:30 PM - 4:30 PM'),
                  RestuarantTimingTable(
                      day: 'Saturday', time: '9:30 AM - 12:30 PM'),
                  RestuarantTimingTable(
                      day: 'Sunday', time: '2:00 PM - 5:00 PM'),
                ],
              ),
              const SizedBox(
                height: 10,
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
                  'Free Wi-Fi',
                  'Pet-Friendly',
                  'Free Parking',
                  'Outdoor Seating',
                  'Wheelchair Accessibility',
                  'Kid-Friendly',
                  'Vegan Options',
                ],
              ),
              SizedBox(
                height: 20,
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
