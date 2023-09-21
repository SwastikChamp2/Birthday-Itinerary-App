import 'package:birthday_itinerary_app/Pages/explore__page.dart';
import 'package:birthday_itinerary_app/Pages/itinerary_detail_page.dart';
import 'package:birthday_itinerary_app/Pages/home_page.dart';
import 'package:birthday_itinerary_app/Pages/my_itinerary_page.dart';
import 'package:birthday_itinerary_app/Pages/payment_page.dart';
import 'package:birthday_itinerary_app/Pages/testpage.dart';
import 'package:flutter/material.dart';
import 'package:birthday_itinerary_app/Pages/restuarant_list.dart';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget buildPriceRating(double ratingValue) {
  final int fullDollars = ratingValue.floor();
  final double fractionalPart = ratingValue - fullDollars;

  // Determine the number of full green dollars
  final List<Widget> dollarIcons = List.generate(fullDollars, (_) {
    return Icon(
      Icons.attach_money,
      color: Colors.green,
      size: 15,
    );
  });

  // If there's a fractional part, add a partially green dollar
  if (fractionalPart > 0.0) {
    dollarIcons.add(
      Icon(
        Icons.attach_money,
        color: Colors.green,
        size: 15,
      ),
    );
    dollarIcons.add(
      Icon(
        Icons.attach_money,
        color: Colors.grey,
        size: 15,
      ),
    );
  }

  // Add remaining gray dollars
  dollarIcons.addAll(List.generate(4 - dollarIcons.length, (_) {
    return Icon(
      Icons.attach_money,
      color: Colors.grey,
      size: 15,
    );
  }));

  return Row(
    children: dollarIcons,
  );
}

class StarRatingChip extends StatelessWidget {
  final double rating;

  StarRatingChip({
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 42,
          height: 18,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 42,
                  height: 18,
                  decoration: ShapeDecoration(
                    color: Color(0xFF5E6980),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(47.62),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 3,
                child: SizedBox(
                  width: 15.75,
                  height: 14.70,
                  child: Text(
                    rating.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.52,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 7,
                top: 4,
                child: Image.asset(
                  'assets/star.png',
                  height: 8,
                  width: 8,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FixedBottomBar extends StatefulWidget {
  late final int selectedIndex;
  final Function(int) onTabTapped;

  FixedBottomBar({required this.selectedIndex, required this.onTabTapped});

  @override
  State<FixedBottomBar> createState() => _FixedBottomBarState();
}

class _FixedBottomBarState extends State<FixedBottomBar> {
  int selectedIndex = 0; // Index of the selected icon

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 45,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 375,
              height: 73,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 14,
                    offset: Offset(0, -2),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildIconButton(
                    index: 0,
                    icon: MdiIcons.home,
                    tooltip: 'Home',
                  ),
                  const SizedBox(width: 80),
                  _buildIconButton(
                    index: 1,
                    icon: MdiIcons.compass,
                    tooltip: 'Explore',
                  ),
                  const SizedBox(width: 80),
                  _buildIconButton(
                    index: 2,
                    icon: MdiIcons.viewList,
                    tooltip: 'My Itinerary',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton({
    required int index,
    required IconData icon,
    required String tooltip,
  }) {
    bool isSelected = index == widget.selectedIndex;

    return GestureDetector(
      onTap: () {
        widget.onTabTapped(index); // Update the selected index

        // Add your onPressed action here
        // For example, you can navigate to the corresponding screen
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
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: isSelected
              ? LinearGradient(
                  begin: Alignment(-0.98, -0.22),
                  end: Alignment(0.98, 0.22),
                  colors: [Color(0xFF8BD8F9), Color(0xFF5395FF)],
                )
              : null,
        ),
        child: Icon(
          icon,
          size: 30,
          color: isSelected ? Colors.white : Color(0xFF666666),
        ),
      ),
    );
  }
}

class HorizontalImageRow extends StatelessWidget {
  final List<String> imageUrls;
  final List<void Function()> onTapRoutes;

  HorizontalImageRow({
    required this.imageUrls,
    required this.onTapRoutes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.88,
      color: Color(0xFFF0F7FF),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return HorizontalImage(
            imageUrl: imageUrls[index],
            onTap: onTapRoutes[index],
          );
        },
      ),
    );
  }
}

class HorizontalImage extends StatelessWidget {
  final String imageUrl;
  final void Function()? onTap;

  HorizontalImage({required this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0), // Adjust the margin as needed
        width: 60.0, // Adjust the width as needed
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), // Add border radius
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class CustomEventDetailCard extends StatelessWidget {
  final String individualEventTitle;
  final String individualEventDate;
  final String individualEventLocation;
  final String individualEventDescription;
  final bool isIndividualEventActive;

  CustomEventDetailCard({
    required this.individualEventTitle,
    required this.individualEventDate,
    required this.individualEventLocation,
    required this.individualEventDescription,
    this.isIndividualEventActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
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
              padding: const EdgeInsets.only(left: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 273,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          individualEventTitle,
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          width: 300,
                          child: Text(
                            individualEventDescription,
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
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/location pin blue icon.png',
                              width: 16,
                              height: 19,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              width: 208,
                              child: Text(
                                individualEventLocation,
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
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/clock blue icon.png',
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              individualEventDate,
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
              color: isIndividualEventActive
                  ? Color.fromARGB(255, 238, 239, 241)
                  : const Color.fromARGB(255, 18, 124, 232),
              border: Border.all(
                color: isIndividualEventActive
                    ? const Color.fromARGB(255, 18, 124, 232)
                    : Color.fromARGB(255, 238, 239, 241),
                width: 5.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTitleTextforItineraryDetail extends StatelessWidget {
  final String Title;
  final int PricePerPerson;
  final String Location;
  final double Rating;

  CustomTitleTextforItineraryDetail({
    required this.Title,
    required this.PricePerPerson,
    required this.Location,
    required this.Rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Column 1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                child: Text(
                  Title,
                  style: TextStyle(
                    color: Color(0xFF5E6980),
                    fontSize: 18.57,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Container(
                width: 250,
                child: Text(
                  Location,
                  style: TextStyle(
                    color: Color(0x7F425884),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          // Column 2
          Column(
            children: [
              StarRatingChip(rating: Rating),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$$PricePerPerson',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF5E6980),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // Text(
                  //   'Per person',
                  //   textAlign: TextAlign.right,
                  //   style: TextStyle(
                  //     color: Color(0x7F425884),
                  //     fontSize: 14,
                  //     fontFamily: 'Poppins',
                  //     fontWeight: FontWeight.w400,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomTitleTextforRestuarantDetail extends StatelessWidget {
  final String restuarantName;
  final double restuarantrating;
  final String restuarantLocation;
  final double priceRating;

  CustomTitleTextforRestuarantDetail({
    required this.restuarantName,
    required this.restuarantrating,
    required this.restuarantLocation,
    required this.priceRating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Column 1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                child: Text(
                  restuarantName,
                  style: TextStyle(
                    color: Color(0xFF5E6980),
                    fontSize: 18.57,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Container(
                width: 250,
                child: Text(
                  restuarantLocation,
                  style: TextStyle(
                    color: Color(0x7F425884),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          // Column 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              StarRatingChip(rating: restuarantrating),
              SizedBox(
                height: 20,
              ),
              buildPriceRating(priceRating),
            ],
          ),
        ],
      ),
    );
  }
}

class ExplorePagePopularCard extends StatelessWidget {
  final String title;
  final String location;
  final double rating;
  final String imageUrl;
  final Widget onTapRoute;

  ExplorePagePopularCard({
    required this.title,
    required this.location,
    required this.rating,
    required this.imageUrl,
    required this.onTapRoute,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => onTapRoute),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: 233,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 10,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Color(0xFF5E6980),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        StarRatingChip(rating: rating),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        color: Color(0xFF5E6980),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExplorePageButton extends StatelessWidget {
  final String text;
  final String style;
  final VoidCallback onPressed;

  const ExplorePageButton({
    Key? key,
    required this.text,
    required this.style,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration;
    Color textColor;
    if (style == 'Gradient') {
      decoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.98, -0.22),
          end: Alignment(0.98, 0.22),
          colors: [Color(0xFF8BD8F9), Color(0xFF5395FF)],
        ),
        borderRadius: BorderRadius.circular(50),
      );
      textColor = Colors.white;
    } else if (style == 'Grey') {
      decoration = BoxDecoration(
        color: Color(0xFFE9ECEF),
        borderRadius: BorderRadius.circular(50),
      );
      textColor = Color(0xFF5E6980);
    } else {
      // Handle other styles or fallback to a default style
      decoration = BoxDecoration(
        color: Colors.grey, // You can set a default style here
        borderRadius: BorderRadius.circular(50),
      );
      textColor = Colors.black; // You can set a default text color here
    }

    return Ink(
      width: 100,
      height: 23,
      decoration: decoration,
      child: InkWell(
        splashColor: Color.fromRGBO(255, 255, 255, 0.5),
        onTap: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 47,
      decoration: BoxDecoration(
        color: Color(0xFFD1DFE0),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                style: TextStyle(color: Color(0xFF5E6A81)),
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Color(0xFF5E6A81),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Icon(
              Icons.search,
              color: Color(0xFF5E6A81),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.filter_alt,
              color: Color(0xFF5E6A81),
            ),
          ],
        ),
      ),
    );
  }
}

//HERE HERE
class ExploreCategoryCard extends StatelessWidget {
  final String imageUrl;
  final String labelText;
  final Widget onTapRoute; // Add this parameter for navigation

  ExploreCategoryCard({
    required this.imageUrl,
    required this.labelText,
    required this.onTapRoute, // Initialize onTapRoute when calling the instance
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  onTapRoute), // Use onTapRoute for navigation
        );
      },
      child: Card(
        elevation: 5,
        shadowColor: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        child: SizedBox(
          width: 331,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                labelText,
                style: TextStyle(
                  color: Color(0xFF757575),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.chevron_right_outlined),
                iconSize: 50,
                color: Color.fromARGB(255, 97, 95, 95),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListCardforEventsandHotel extends StatelessWidget {
  final String imageUrl;
  final String labelText;
  final Widget onTapRoute;
  final double rating;

  ListCardforEventsandHotel({
    required this.imageUrl,
    required this.labelText,
    required this.onTapRoute,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  onTapRoute), // Use onTapRoute for navigation
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        child: Container(
          width: 258,
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Whispering Woods',
                    style: TextStyle(
                      color: Color(0xFF5E6980),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      'Ocean Avenue, Santa Monica,',
                      style: TextStyle(
                        color: Color(0xFF5E6980),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      StarRatingChip(rating: rating),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        '\$45',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF5E6980),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListCard1 extends StatelessWidget {
  final String title;
  final String location;
  final double rating;
  final String imageUrl;
  final int price;
  final Widget onTapRoute; // Add this parameter for navigation

  ListCard1({
    required this.title,
    required this.location,
    required this.rating,
    required this.price,
    required this.imageUrl,
    required this.onTapRoute, // Initialize onTapRoute when calling the instance
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  onTapRoute), // Use onTapRoute for navigation
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: 233,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 10,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Color(0xFF5E6980),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        StarRatingChip(rating: rating),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 130,
                          child: Text(
                            location,
                            style: TextStyle(
                              color: Color(0xFF5E6980),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '\$ $price',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF5E6980),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListCard2 extends StatelessWidget {
  final String title;
  final String location;
  final double rating;
  final String imageUrl;
  final double priceRating; // Updated to double for rating
  final Widget onTapRoute;

  ListCard2({
    required this.title,
    required this.location,
    required this.rating,
    required this.imageUrl,
    required this.priceRating, // make the price rating between 0 - 4 (keep it a whole number else it will be rounded to nearest whole number)
    required this.onTapRoute,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => onTapRoute,
          ),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: 233,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 10,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Color(0xFF5E6980),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        StarRatingChip(rating: rating),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 130,
                          child: Text(
                            location,
                            style: TextStyle(
                              color: Color(0xFF5E6980),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        buildPriceRating(priceRating), // Use the custom method
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestuarantTimingTable extends StatelessWidget {
  final String day;
  final String time;

  RestuarantTimingTable({required this.day, required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              day,
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.04,
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
        SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ],
    );
  }
}

class ChipList extends StatelessWidget {
  final List<String> items;

  ChipList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: items.map((item) {
        return Chip(
          label: Text(item),
        );
      }).toList(),
    );
  }
}

class BlueButton extends StatelessWidget {
  final String buttonTitle;

  BlueButton({required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  PaymentPage()), // Use onTapRoute for navigation
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF3AA8D6), // Button color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0), // Border radius
        ),
        minimumSize: Size(189.0, 50.0), // Button dimensions
      ),
      child: Text(
        buttonTitle,
        style: TextStyle(
          fontSize: 16.0, // Text size
          color: Colors.white, // Text color
        ),
      ),
    );
  }
}

class RoomTableItem extends StatelessWidget {
  final String room;
  final String description;
  final int price;

  RoomTableItem({
    required this.room,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              room,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 4,
            child: Text(
              description,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 2,
            child: Text(
              '\$$price',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 21, 76, 121),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyItineraryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String date;
  final String location;
  final Widget onTapRoute; // Callback function

  MyItineraryCard({
    required this.imageUrl,
    required this.title,
    required this.time,
    required this.date,
    required this.location,
    required this.onTapRoute,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  onTapRoute), // Use onTapRoute for navigation
        );
      },
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),
        elevation: 4, // Adjust the elevation as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            width: 300,
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.circular(8),
                    // Replace imageUrl with your image URL
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Color(0xFF3D3F44),
                          fontSize: 11.78,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.access_time,
                              color: Color(0xFF15A8E7), size: 16),
                          SizedBox(width: 8),
                          Text(
                            time,
                            style: TextStyle(
                              color: Color(0xFF191919),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_today,
                              color: Color(0xFF15A8E7), size: 16),
                          SizedBox(width: 8),
                          Text(
                            date,
                            style: TextStyle(
                              color: Color(0xFF191919),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_pin,
                              color: Color(0xFF15A8E7), size: 16),
                          SizedBox(width: 8),
                          Container(
                            width: 150,
                            child: Text(
                              location,
                              style: TextStyle(
                                color: Color(0xFF191919),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
