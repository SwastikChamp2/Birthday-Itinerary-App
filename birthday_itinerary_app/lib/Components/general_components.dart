import 'package:birthday_itinerary_app/Pages/explore_page.dart';
import 'package:birthday_itinerary_app/Pages/home_page.dart';
import 'package:flutter/material.dart';

class FixedBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 739,
      child: Container(
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
            Positioned(
              left: 50,
              top: 10,
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Image.asset(
                        'assets/home page button selected.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 80),
                    GestureDetector(
                      onTap: () {
                        // Navigation route to HomePage
                      },
                      child: Image.asset(
                        'assets/explore page button.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 80),
                    GestureDetector(
                      onTap: () {
                        // Navigation route to itinerary event page
                      },
                      child: Image.asset(
                        'assets/itinerary page button.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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

class CustomTitleText extends StatelessWidget {
  final String itineraryTitle;
  final int itineraryPricePerPerson;
  final String itineraryLocation;

  CustomTitleText({
    required this.itineraryTitle,
    required this.itineraryPricePerPerson,
    required this.itineraryLocation,
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
                  itineraryTitle,
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
                  itineraryLocation,
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
              Text(
                '\$$itineraryPricePerPerson',
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
