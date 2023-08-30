import 'package:flutter/material.dart';

class BirthdayItineraryCard extends StatelessWidget {
  final String title;
  final String price;
  final String rating;
  final String imageUrl;

  BirthdayItineraryCard({
    required this.title,
    required this.price,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 9,
      top: 12,
      child: Container(
        width: 309,
        height: 310.33,
        child: Stack(
          children: [
            //White background
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 309,
                height: 310.33,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33.15),
                  ),
                ),
              ),
            ),
            //Image Layout for Birthday Item
            Positioned(
              left: 17.24,
              top: 15.91,
              child: Container(
                width: 275.60,
                height: 208.21,
                child: Stack(
                  children: [
                    // Image Container with rounded corners
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 275.60,
                        height: 208.21,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                          borderRadius: BorderRadius.circular(26.52),
                          image: DecorationImage(
                            image: NetworkImage(imageUrl),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    // Circular Icon at the top right corner
                    Positioned(
                      right: 20,
                      top: 15,
                      child: Container(
                        width: 34.48,
                        height: 34.48,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/bookmark icon.png',
                            width: 20, // Adjust the size as needed
                            height: 20,
                            // You can add more styling properties as needed
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Itinerary details text and rating chip.
            Positioned(
              left: 24,
              top: 243,
              child: Container(
                width: 253,
                height: 56,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 253,
                        height: 56,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: 253,
                                child: Text(
                                  '$title\n',
                                  style: TextStyle(
                                    color: Color(0xFF5E6980),
                                    fontSize: 18.57,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 4,
                              top: 29,
                              child: Row(
                                children: [
                                  Text(
                                    '$price',
                                    style: TextStyle(
                                      color: Color(0xFF242527),
                                      fontSize: 20,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 190,
                      top: 28,
                      child: Container(
                        width: 55.70,
                        height: 23.87,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 55.70,
                                height: 23.87,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF5E6980),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(66.31),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              top: 4.5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/star.png',
                                    height: 15.26,
                                    width: 12.26,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '$rating',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.26,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Card ends
          ],
        ),
      ),
    );
  }
}
